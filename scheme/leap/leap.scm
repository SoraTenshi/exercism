(import (rnrs))
(use-modules ((rnrs)))

(define (divisible? i j)
  (zero? (remainder i j)))

(define (leap-year? year)
  (if (and (divisible? year 4) (not (divisible? year 100)))
    #t
    (if (divisible? year 400)
      #t
      #f)))
