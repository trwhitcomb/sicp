; Structure and Interpretation of Computer Programs
; Problem 1.26
; T. Whitcomb, 07AUG2008

;; Procedures taken from SICP text
(define (fermat-test a n)
  (= (expmod a n n) a))

; compute (b^n) mod m
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (dec exp) m))
                    m))))

;; Procedures written for this exercise
(define (fermat-test-region start end n)
  (if (= start end) 
      (= 0 0)
      (and (fermat-test start n)
           (fermat-test-region (inc start) end n))))

(define (test-carmichael n)
  (fermat-test-region 1 n n))

(define (square x)
  (* x x))

(define (inc x)
  (+ x 1))
(define (dec x)
  (- x 1))