; Structure and Interpretation of Computer Programs
; Problem 2.27
; T. R. Whitcomb, 03DEC2008

; Return a list of the same elements in reverse order
(define (deep-reverse l)
  (cond ((null? l) '())
        ((not (pair? l)) l)
        (else (append (deep-reverse (cdr l)) 
                      (list (deep-reverse (car l)))))))

(define test-list (list 1 2 (list 3 (list 4 5))))
test-list
(deep-reverse test-list)