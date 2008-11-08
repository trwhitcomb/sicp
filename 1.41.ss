; Structure and Interpretation of Computer Programs
; Problem 1.41
; T. R. Whitcomb 08NOV2008

(define (double proc)
  (lambda (x)
    (proc (proc x))))

(define (inc n)
  (+ n 1))
(((double (double double)) inc) 5)