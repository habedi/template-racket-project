#lang racket

(require "../template-lib/main.rkt")

;; Example usage of the template arithmetic library
(displayln "Template Racket Library Example")
(displayln "==============================")

;; Demonstrate basic arithmetic operations
(displayln "Addition: 5 + 3 = ")
(displayln (add 5 3))

(displayln "Subtraction: 10 - 4 = ")
(displayln (subtract 10 4))

(displayln "Multiplication: 6 * 7 = ")
(displayln (multiply 6 7))

(displayln "Division: 20 / 5 = ")
(displayln (divide 20 5))

;; Demonstrate error handling for division by zero
(displayln "\nAttempting division by zero:")
(with-handlers ([exn:fail? (lambda (e)
                             (displayln (format "Caught error: ~a" (exn-message e))))])
  (divide 10 0))

;; Working with a list of numbers
(define numbers '(10 20 30 40 50))
(displayln "\nPerforming operations on a list:")
(displayln "Original list:")
(displayln numbers)

(displayln "\nAfter adding 5 to each element:")
(displayln (map (lambda (x) (add x 5)) numbers))

(displayln "\nAfter multiplying each element by 2:")
(displayln (map (lambda (x) (multiply x 2)) numbers))

;; Run the example
(module+ main
  (displayln "\nExample completed successfully!"))
