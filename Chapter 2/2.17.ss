; Structure and Interpretation of Computer Programs
; Problem 2.17
; T. R. Whitcomb, 17NOV2008

; Return the list that contains only the last element of a given (nonempty) list
(define (trw-last-pair l)
  (if (null? (cdr l))
      (list (car l))
      (last-pair (cdr l))))
