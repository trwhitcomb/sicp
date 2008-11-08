; Structure and Interpretation of Computer Programs
; Problem 1.40
; T. R. Whitcomb, 08NOV2008

; Define a procedure "cubic" that can be used with a newtons-method solver
; Take in a, b, c to compute x^3 + ax^2 + bx + c

; Newton's method
(define dx 0.0000001)
(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x)) 
       dx)))
(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))
(define (newtons-method g guess)
  (fixed-point-of-transform g newton-transform guess))

; Fixed-point iteration
(define tolerance 0.00001)
(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

; Cubic generator
(define (cube x)
  (* x x x))
(define (square x)
  (* x x))
(define (cubic a b c)
  (lambda (x)
    (+ (cube x)
       (* a (square x))
       (* b x)
       c)))

; Test - this has roots at -8.3133, 1.8870, and -0.5737
(define test-cubic (cubic 7 -12 -9))
(newtons-method test-cubic 0.0)
(newtons-method test-cubic 2.0)
(newtons-method test-cubic -9.0)
