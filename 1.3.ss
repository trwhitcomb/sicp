; Structure and Interpretation of Computer Programs
; Problem 1.3
; T. Whitcomb, 31JUL2008

(define (ss-two-largest a b c)
  (define (square x)
    (* x x))
  (define (sum-of-squares x y)
    (+ (square x) (square y)))
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        ((and (< c a) (< c b)) (sum-of-squares a b))))
