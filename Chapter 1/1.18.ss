; Structure and Interpretation of Computer Programs
; Problem 1.18
; T. R. Whitcomb 03AUG2008

(define (fast-mult a b)
  (define (fast-mult-iter a b c)
    (define (double x)
      (+ x x))
    (define (halve x)
      (/ x 2))  
    (cond ((= c 0) a)
          ((even? c) (fast-mult-iter (+ a (double b))
                                     (double b)
                                     (halve (- c 2))))
          (else (fast-mult-iter (+ a b)
                                b
                                (- c 1)))))
  
  (fast-mult-iter 0 a b))
