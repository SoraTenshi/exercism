(define (divisible? i j)
  (zero? (remainder i j)))

(do ((i 1 (+ i 1)))
  ((> i 100))
  (cond
    ((and (divisible? i 3) (divisible? i 5)) (display "FizzBuzz"))
    ((divisible? i 3) (display "Fizz"))
    ((divisible? i 5) (display "Buzz"))
    (else (display i)))
    (newline))
