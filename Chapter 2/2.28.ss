; Structure and Interpretation of Computer Programs
; Problem 2.28
; T. R. Whitcomb, 03DEC2008

(define (fringe l)
  (cond ((null? l) '())
        ((not (pair? l)) (list l))
        (else (append (fringe (car l))
                      (fringe (cdr l))))))

(define x (list (list 1 2) (list 3 4)))
(fringe x)
(fringe (list x x))
