#lang racket

(require "template-lib/main.rkt")

(module+ main
  (displayln "Template Racket Library")
  (displayln "=======================")

  (displayln "This is a simple arithmetic library.")
  (displayln "Try these functions: add, subtract, multiply, divide")

  (printf "Example: (add 5 3) = ~a\n" (add 5 3))

  (displayln "\nUse this library by requiring it in your Racket programs:")
  (displayln "(require \"path/to/template-racket-library.rkt\")")
)
