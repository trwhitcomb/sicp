; Structure and Interpretation of Computer Programs
; Problem 1.29
; T. R. Whitcomb 29SEP2008

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson f a b n)
  (define h 
    (/ (- b a) n))
  (define (get-k x)
    (/ (- x a) h))
  (define (next-point x)
    (+ x h))
  (define (simp-weight k)
    (cond ((= k 0) 1)
          ((= k n) 1)
          ((even? k) 2)
          (else 4)))
  (define (weighted-f x)
    (* (simp-weight (get-k x)) (f x)))
  (* (/ h 3) (sum weighted-f a next-point b)))
(simpson (lambda (x) (* x x x)) 0 1 1000)

