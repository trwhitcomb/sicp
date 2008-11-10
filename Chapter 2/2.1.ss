; Structure and Interpretation of Computer Programs
; Problem 2.1
; T. R. Whitcomb, 10NOV2008

; Improve rational number package to normalize signs
(define (make-rat n d)
  (let ((d-normal (abs d))
        (n-normal (if (> (/ n d) 0)
                      (abs n)
                      (* -1 (abs n)))))
    (cons n-normal d-normal)))
(define (numer x)
  (car x))
(define (denom x)
  (cdr x))
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

; Test
(print-rat (make-rat -5 -3))
(print-rat (make-rat 5 3))
(print-rat (make-rat -5 3))
(print-rat (make-rat 5 -3))
