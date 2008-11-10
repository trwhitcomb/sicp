; Structure and Interpretation of Computer Programs
; Problem 2.5
; T. R. Whitcomb

; Implement pairs as the product 2^a*3^b
(define CAR-BASE 2)
(define CDR-BASE 3)
(define (num-cons a b)
  (* (expt CAR-BASE a) (expt CDR-BASE b)))
(define (num-car z)
  (count-factor z CAR-BASE))
(define (num-cdr z)
  (count-factor z CDR-BASE))
(define (count-factor num factor)
  (define (iter cur-value factor-count)
    (if (= 0 (remainder cur-value factor))
        (iter (/ cur-value factor) (+ factor-count 1))
        factor-count))
  (iter num 0))

; Test
(define (test-num a b)
  (let ((test-pair (num-cons a b)))
    (display (num-car test-pair))
    (display ":")
    (display (num-cdr test-pair))
    (newline)))
(test-num 1 3)
(test-num 8 17)
(test-num 0 0)

