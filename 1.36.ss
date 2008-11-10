; Structure and Interpretation of Computer Programs
; Problem 1.36
; T. Whitcomb 27OCT08

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (cond ((close-enough? guess next)
             (display next)
             (newline))
            (else
             (display guess)
             (newline)
             (try next)))))
  (try first-guess))

; Find fixed-point without average damping
(display "Without average damping")
(newline)
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)

; Find fixed-point  with average damping
(display "With average damping")
(newline)
(fixed-point (lambda (x) (/ (+ x (/ (log 1000) (log x))) 2.0)) 2.0)
