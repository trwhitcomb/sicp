; Structure and Interpretation of Computer Programs
; Problem 2.22
; T. R. Whitcomb, 28NOV2008

(define (square x)
  (* x x))
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items '()))

(define test-list (list 1 2 3 4 5 6 7))

(square-list test-list)