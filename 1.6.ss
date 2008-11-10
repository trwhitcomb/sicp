; Structure and Interpretation of Computer Programs
; Problem 1.6
; T. Whitcomb, 31JUL2008

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
(define (square x)
  (* x x))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt-wrapper x)
  (sqrt-iter 1.0 x))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(sqrt-wrapper 9.0)
