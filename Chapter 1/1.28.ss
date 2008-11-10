; Structure and Interpretation of Computer Programs
; Problem 1.28
; T. R. Whitcomb 29SEP2008

(define (expmod-mr base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         ; Have found a non-trivial square root of 1 mod n
         ; 
         (let ((square-root (expmod-mr base (/ exp 2) m)))
           (if (and (not (= square-root 1))
                    (not (= square-root (- m 1)))
                    (= (remainder (square square-root) m) 1))
               0
               (remainder (square square-root) m))))
        (else
         (remainder (* base (expmod-mr base (- exp 1) m))
                    m))))


(define (square x)
  (* x x))

(define (miller-rabin-test n)
  (define (try-it a)
    (= (expmod-mr a (- n 1) n) 1))
  (try-it (+ 1 (random (- n 1)))))

(define (is-prime? n)
  (miller-rabin-test n))

(define (largest-factor n)
  (factor-iter n (- n 1)))

; Need to check two things - that the guess evenly divides n
; and that it's prime
(define (factor-iter n guess)
  (if (and (= 0 (remainder n guess))
           (is-prime? guess))
      guess
      (factor-iter n (- guess 1))))

              
