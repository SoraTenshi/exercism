(import (rnrs))

(define (zip l1 l2)
  (if (or (null? l1) (null? l2))
    '()
    (cons (list (car l1) (car l2))
           (zip (cdr l1) (cdr l2)))))

(define (zip-filter pred l1 l2)
  (filter pred (zip l1 l2)))

(define (hamming-distance strand-a strand-b)
  (let ((list-a (string->list strand-a))
        (list-b (string->list strand-b)))
    (cond
      ((and (null? list-a) (null? list-b))
       0)
      ((or (null? list-a) (null? list-b))
       (error "One of the strands is empty"))
      ((not (= (length list-a) (length list-b)))
       (error "Strands are of different lengths"))
      (else
       (length
        (zip-filter (lambda (pair)
                      (not (char=? (car pair) (cadr pair))))
                    list-a
                    list-b))))))

