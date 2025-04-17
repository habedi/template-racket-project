#lang info

(define name "template-racket-project")
(define version "0.1.0")
(define collection "template-lib")
(define deps '("base")) ;; Add any additional dependencies here
(define build-deps '("rackunit"))
(define scribblings '(("docs/index.scrbl" (multi-page))))
(define compile-omit-paths '("tests" "examples"))
