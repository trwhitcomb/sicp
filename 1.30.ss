; Structure and Interpretation of Computer Programs
; Problem 1.30
; T. R. Whitcomb 29SEP08

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))
