; Structure and Interpretation of Computer Programs
; Problem 1.39
; T. Whitcomb 07NOV08

(define (tan-cf x k)
  (define (lambert-N i)
    (if (> i 1)
        (square x)
        x))
  (define (lambert-D i)
    ; Generate the sequence 1, 3, 5, etc.
    (- (* 2 i) 1))
  (define (cont-frac n d)
    (define (frac n d i)
      (if (> i k)
          0
          (/ (n i) (- (d i) (frac n d (+ i 1))))))   
    (frac n d 1))
  (cont-frac lambert-N lambert-D))

(define (square x)
  (* x x))


