; Structure and Interpretation of Computer Programs
; Problem 2.20
; T. R. Whitcomb, 17NOV2008

(define (same-parity . l)
  (list-parity (remainder (car l) 2) l))

(define (list-parity parity test-list)
  (if (null? test-list)
      '()
      (if (= (remainder (car test-list) 2) parity)
          (cons (car test-list) (list-parity parity (cdr test-list)))
          (list-parity parity (cdr test-list)))))
