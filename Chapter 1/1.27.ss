; Structure and Interpretation of Computer Programs
; Problem 1.27
; T. Whitcomb, 07AUG2008

; Miller-Rabin: a**(n-1) mod n = 1 mod n
(define (miller-rabin-test n)
  (define (try-it a)
    (= (expmod a (dec n) 1) 1))
  (try-it (+ 1 (random (dec n)))))

; compute (b^n) mod m
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         ; Check for non-trivial square roots of 1 mod m
         (if (= (remainder (square (expmod base (/ exp 2) m))
                           m)
                1)
             0
             (remainder (square (expmod base (/ exp 2) m))
                        m)))
        (else
         (remainder (* base (expmod base (dec exp) m))
                    m))))

(define (square x)
  (* x x))
(define (inc x)
  (+ x 1))
(define (dec x)
  (- x 1))