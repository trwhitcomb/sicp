; Structure and Interpretation of Computer Programs
; Problem 1.31
; T. R. Whitcomb 29SEP2008

(define (product term a next b)
  (if (> a b)
      1
      (* (term a) 
         (product term (next a) next b))))

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (inc x) (+ x 1))
(define (ident x) x)

(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))
