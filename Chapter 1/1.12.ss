; Structure and Interpretation of Computer Programs
; Problem 1.12
; T. R. Whitcomb 31JUL2008

(define (P row col)
  (if (or (= row 1)
          (= col 1)
          (= col row))
      1
      (+ (P (- row 1) (- col 1)) (P (- row 1) col))))
