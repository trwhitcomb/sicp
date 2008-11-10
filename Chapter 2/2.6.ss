; Structure and Interpretation of Computer Programs
; Problem 2.6
; T. R. Whitcomb 10NOV2008

; Church numerals
(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

; Derived values
(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

(define (add-church a b)
  (lambda (f)
    (lambda (x)
      ((a f) ((b f) x)))))

; Test
(define (inc n) (+ 1 n))
(define (eval-church n)
  ((n inc) 0))
(define three (add-church one two))
(eval-church zero)
(eval-church one)
(eval-church two)
(eval-church three)
(eval-church (add-church three two))



