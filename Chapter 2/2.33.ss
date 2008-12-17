; Structure and Interpretation of Computer Programs
; Problem 2.33
; T. R. Whitcomb, 16DEC2008

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

; Redefine basic list operations as accumulations
(define (trw-map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) '() sequence))

(define (trw-append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (trw-length sequence)
  (accumulate (lambda (x y) (+ y 1)) 0 sequence))

(define list1 '(1 2 3))
(define list2 '(4 5 6))
