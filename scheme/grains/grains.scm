(import (rnrs))

(define (square n) ; how many grains are on a square
  (if (> n 64) (error "Number too large"))
  (if (< n 1) (error "Number is not a positive integer"))
  (expt 2 (- n 1)))

(define total
  (- (expt 2 64) 1))
