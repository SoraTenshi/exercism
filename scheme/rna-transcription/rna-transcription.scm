(import (rnrs))

(define (transpile c)
  (cond
    ((char=? c #\G) #\C)
    ((char=? c #\C) #\G)
    ((char=? c #\T) #\A)
    ((char=? c #\A) #\U)
    (else c)))

(define (dna->rna dna)
  (let* ((dna-list (string->list dna))
         (rna-list (map transpile dna-list))
         (rna (list->string rna-list)))
  rna))

