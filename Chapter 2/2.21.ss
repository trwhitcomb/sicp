; Structure and Interpretation of Computer Programs
; Problem 2.21
; T. R. Whitcomb, 28NOV2008

(define (square x)
  (* x x))

(define (square-list-1 items)
  (if (null? items)
      '()
      (cons (square (car items)) (square-list-1 (cdr items)))))

(define (square-list-2 items)
  (map square items))

(define test-list (list 1 2 3 4 5 6 7))

(square-list-1 test-list)
(square-list-2 test-list)
