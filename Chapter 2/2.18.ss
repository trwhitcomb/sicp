; Structure and Interpretation of Computer Programs
; Problem 2.18
; T. R. Whitcomb, 17NOV2008

(define (trw-append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (trw-append (cdr list1) list2))))

; Return a list of the same elements in reverse order - need to use
; APPEND
(define (trw-reverse l)
  (if (null? l)
      '()
      (trw-append (trw-reverse (cdr l)) 
                  (list (car l)))))