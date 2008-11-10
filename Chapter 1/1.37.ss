; Structure and Interpretation of Computer Programs
; Problem 1.37
; T. Whitcomb 07NOV08

(define (frac-recur n d i k)
  (if (> i k)
      0
      (/ (n i) (+ (d i) (frac-recur n d (+ i 1) k)))))

(define (frac-iter n d F i)
  (if (= i 0)
    F
    (frac-iter n d (/ (n i) (+ (d i) F)) (- i 1))))
    
(define (cont-frac n d k)
  (frac-iter n d 0 k))
  ;(frac-recur n d 1 k))

(define (one x)
  1.0)
