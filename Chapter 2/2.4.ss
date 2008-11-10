; Structure and Interpretation of Computer Programs
; Problem 2.4
; T. R. Whitcomb 10NOV2008

; Procedural representation of pairs
(define (proc-cons x y)
  (lambda (m) (m x y)))
(define (proc-car z)
  (z (lambda (p q) p)))
(define (proc-cdr z)
  (z (lambda (p q) q)))
