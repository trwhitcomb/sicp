; Structure and Interpretation of Computer Programs
; Problem 1.17
; T. R. Whitcomb 03AUG2008

(define (fast-mult a b)
  (cond ((= b 0) 0)
        ((even? b) (double (fast-mult a (halve b))))
        (else (+ a (fast-mult a (- b 1))))))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))
