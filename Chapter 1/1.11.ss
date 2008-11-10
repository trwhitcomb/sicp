; Structure and Interpretation of Computer Programs
; Problem 1.11
; T. R. Whitcomb 31JUL2008

; Recursive solution
(define (recursive-f n)
  (if (< n 3)
      n
      (+ (* 1 (recursive-f (- n 1))) 
         (* 2 (recursive-f (- n 2))) 
         (* 3 (recursive-f (- n 3))))))

; Iterative solution
(define (f-iter f- f-- f--- counter)
  (if (= 0 counter)
      f-
      (f-iter (+ f- (* 2 f--) (* 3 f---)) f- f-- (- counter 1))))
(define (iterative-f n)
  (f-iter 2 1 0 (- n 2)))

