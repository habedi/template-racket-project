#lang racket

(require rackunit
         "../template-lib/main.rkt")

(module+ test
  (check-equal? (add 1 2) 3)
  (check-equal? (subtract 5 3) 2)
  (check-equal? (multiply 4 2) 8)
  (check-equal? (divide 10 2) 5)
  (check-exn exn:fail? (λ () (divide 1 0))))
