; Structure and Interpretation of Computer Programs
; Problem 1.33
; T. R. Whitcomb 29SEP2008

(define (filtered-accumulate filter combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner
       ; Only combine if the filter condition is true
       (if (filter a)
           (term a)
           null-value)
       (filtered-accumulate filter combiner null-value term (next a) next b))))

(define (ident x) x)
(define (inc x) (+ 1 x))
