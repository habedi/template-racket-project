#lang racket

(provide add
         subtract
         multiply
         divide)

;; Basic arithmetic library

(define (add a b)
  (+ a b))

(define (subtract a b)
  (- a b))

(define (multiply a b)
  (* a b))

(define (divide a b)
  (if (= b 0)
      (error 'divide "division by zero")
      (/ a b)))
