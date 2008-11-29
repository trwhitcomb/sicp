; Structure and Interpretation of Computer Programs
; Problem 2.23
; T. R. Whitcomb, 28NOV2008

(define (trw-for-each proc items)
  (cond ((null? items) #t)
        (else ((proc (car items))
               (trw-for-each proc (cdr items))))))
