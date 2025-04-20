#lang info

(define style
  '(
    ;; Maximum line width (80-100 typically recommended)
    (width . 100)

    ;; Indentation rules
    (indent-width . 2)
    (indent-sequence-style . modern)

    ;; Spacing preferences
    (leading-parens . never)
    (trailing-parens . always)

    ;; General style choices
    (quote-style . single)
    (currency-style . prefix)
    (nonterminal-style . angle)

    ;; Formatting options
    (line-break-multiline-string? . #t)
    (semicolon-style . free)
    (remove-comments? . #f)

    ;; Newline preferences
    (;hash-newlines . always)
    (list-newlines . multiline)
    (function-newlines . multiline)
    (begin-newlines . never)
  ))
