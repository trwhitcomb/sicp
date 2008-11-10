; Structure and Interpretation of Computer Programs
; Problem 1.7
; T. Whitcomb, 31JUL2008

(define (square-root x)
  (define (sqrt-iter guess last-guess x)
    (define (square x)
      (* x x))
    (define (good-enough? guess last-guess)
      ;; Do this with a % difference rather than absolute
      (< (abs (%-diff guess last-guess))
         0.001))
    (define (guess-error guess x)
      (abs (- (square guess) x)))
    (define (%-diff x y)
      (/ (- x y) x))
    (define (improve guess x)
      (average guess (/ x guess)))
    (define (average x y)
      (/ (+ x y) 2))
    (if (good-enough? guess last-guess)
        guess
        (sqrt-iter (improve guess x)
                   guess
                   x)))
  (sqrt-iter 1.0 0.0 x))


