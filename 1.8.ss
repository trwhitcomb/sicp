; Structure and Interpretation of Computer Programs
; Problem 1.8
; T. Whitcomb, 31JUL2008

(define (cube-root x)
  (define (cube-root-iter guess last-guess x)
    (define (good-enough? guess last-guess)
      (define (%-diff x y)
        (/ (- x y) x))
      (< (abs (%-diff guess last-guess))
         0.001))
    (define (improve guess x)
      (define (average x y z )
        (/ (+ x y z) 3))
      (define (square x)
        (* x x))
      (average guess guess (/ x (square guess))))    
    (if (good-enough? guess last-guess)
        guess
        (cube-root-iter (improve guess x)
                        guess
                        x)))
  (cube-root-iter 1.0 0.0 x))






