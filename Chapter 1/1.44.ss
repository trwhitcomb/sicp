; Structure and Interpretation of Computer Programming
; Problem 1.44
; T. R. Whitcomb 08NOV2008

; Function composition
(define (composite f g)
  (lambda (x)
    (f (g x))))
(define (repeated f n)
  (if (= n 1)
      (lambda (x) (f x))
      (composite f (repeated f (- n 1)))))

; Smoother
(define (smooth f)
  (define dx 0.00001)
  (define (average-smooth a b c)
    (/ (+ a b c)
       3))
  (lambda (x)
    (average-smooth (f x)
                    (f (- x dx))
                    (f (+ x dx)))))

(define (n-fold-smooth f n)
  (repeated (smooth f) n))
