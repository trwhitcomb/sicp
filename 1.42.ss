; Structure and Interpretation of Computer Programs
; Problem 1.42
; T. R. Whitcomb 08NOV2008

; Implement function composition f(g(x)) - note that f and g are one-arg functions
(define (composition f g)
  (lambda (x)
    (f (g x))))

; Test - should be 49
(define (square x)
  (* x x))
(define (inc n)
  (+ n 1))
((composition square inc) 6)
