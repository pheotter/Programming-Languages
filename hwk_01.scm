(define (dropEveryOther lst)
  (if (null? lst)
      '()
      (if (null? (cdr lst))
          lst
          (cons (car lst)
            (dropEveryOther (cddr lst))))))
