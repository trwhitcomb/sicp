; Structure and Interpretation of Computer Programs
; Problem 1.38
; T. Whitcomb 07NOV08

(define (frac n d i k)
  (if (> i k)
      0
      (/ (n i) (+ (d i) (frac n d (+ i 1) k)))))
 
(define (cont-frac n d k)
  (frac n d 1 k))

(define (euler-N i)
  1.0)

(define (euler-D i)
  ; Generate the sequence 1, 2, 1, 1, 4, 1, 1, 6, 1, 1, etc.
  (if (= 0 (remainder (- i 2) 3))
      (/ (* 2 (+ i 1)) 3)
      1))
; Euler approximates e-2 by Ni = 1, Di = 1, 2, 1, 1, 4, 1, 1, etc.
(define (euler-e k)
  (+ 2 (cont-frac euler-N euler-D k)))