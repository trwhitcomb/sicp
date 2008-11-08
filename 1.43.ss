; Structure and Interpretation of Computer Programs
; Problem 1.43
; T. R. Whitcomb 08NOV2008

(define (composite f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (if (= n 1)
      (lambda (x) (f x))
      (composite f (repeated f (- n 1)))))
      

; Test - should be 625
(define (square x)
  (* x x))
((repeated square 2) 5)