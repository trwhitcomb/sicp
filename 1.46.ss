; Structure and Interpretation of Computer Programs
; Problem 1.46
; T. R. Whitcomb, 08NOV2008

; Generic method for iterative improvement
; Inputs:  Method for testing a "guess goodness"
;          Method for improving a guess
; Outputs: Procedure taking a guess and returning a "good guess"
(define (iterative-improve is-good-guess? improve-guess)
  (define (try-guess x)
    (if (is-good-guess? x)
        x
        (try-guess (improve-guess x))))
  try-guess)

; Use iterative improvement for square roots
(define square-root
  (lambda (x)
    (define (square x)
      (* x x))
    (define tolerance 0.00001)
    (define (sqrt-good-guess x)
      (lambda (guess)
        (< (abs (- (square guess) x)) tolerance)))
    (define (sqrt-improve-guess x)
      (lambda (y)
        (/ (+ y (/ x y)) 2)))
    ((iterative-improve (sqrt-good-guess x)
                        (sqrt-improve-guess x))
     x)))

; Use iterative improvement for fixed points
(define fixed-point
  (lambda (f x)
    (define tolerance 0.00001)
    (define (fp-good-guess f)
      (lambda (guess)
        (< (abs (- (f guess) guess)) tolerance)))
    (define (fp-improve-guess f)
      (lambda (x)
        (f x)))   
    ((iterative-improve (fp-good-guess f)
                        (fp-improve-guess f))
     x)))