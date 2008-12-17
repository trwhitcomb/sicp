; Structure and Interpretation of Computer Programs
; Problem 2.37
; T. R. Whitcomb, 16DEC2008

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (mv) (dot-product mv v)) m))

(define (transpose mat)
  (accumulate-n cons '() mat))

; Looks a little weird since this is row-based storage
(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (v) (matrix-*-vector cols v)) m)))

(define I4  '((1 0 0 0) (0 1 0 0) (0 0 1 0) (0 0 0 1)))
(define M4  '((1 2 3 4) (4 5 6 6) (6 7 8 9)))
(define x4 '(1 2 3 4))

(dot-product x4 x4)
(matrix-*-vector M4 x4)
(matrix-*-vector I4 x4)
(matrix-*-matrix M4 (transpose M4))