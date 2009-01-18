; Structure and Interpretation of Computer Programs
; Problem 2.38
; T. R. Whitcomb, 14JAN2009

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

(define (fold-right op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (fold-right op initial (cdr sequence)))))

(fold-right / 1 (list 1 2 3))
(fold-left  / 1 (list 1 2 3))
(fold-right list '() (list 1 2 3))
(fold-left  list '() (list 1 2 3))
