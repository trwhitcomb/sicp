; Structure and Interpretation of Computer Programs
; Problem 1.16
; T. R. Whitcomb 01AUG2008

(define (fast-exp-iter a b n)
  (cond ((= n 0) a)
         ((even? n) (fast-exp-iter (* a (square b)) 
                                   (square b) 
                                   (/ (- n 2) 2)))
         (else (fast-exp-iter (* a b)
                              b
                              (- n 1)))))
(define (fast-exp b n)
  (fast-exp-iter 1 b n))

(define (square x)
  (* x x ))
