; Structure and Interpretation of Computer Programs
; Problem 1.45
; T. R. Whitcomb, 08NOV2008

; Determine how many average damps are required to compute an nth root
; and then write a generic nth-root solver

; Fixed-point iteration
(define tolerance 0.00001)
(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (display next)
      (newline)
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))


; Average Damping
(define (average-damp f)
  (lambda (x) (average x (f x))))
(define (average x y)
  (/ (+ x y) 2))

; Function composition
(define (composite f g)
  (lambda (x)
    (f (g x))))
(define (repeated f n)
  (if (= n 1)
      (lambda (x) (f x))
      (composite f (repeated f (- n 1)))))

; Find nth root of x - the number of average damps is floor(log2(n))
(define (num-damps n)
  (define (log2 x)
    (/ (log x) (log 2)))
  (floor (log2 n)))
(define (root-finder x n)
  (fixed-point-of-transform (lambda (y) (/ x (expt y (- n 1))))
                            (repeated average-damp (num-damps n))
                            1.0))

