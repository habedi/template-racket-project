#lang scribble/manual

@title{Template Racket Project} ;; <-- User should change this title

@defmodule[template-lib/main] ;; <-- User MUST change 'template-lib' to their collection name

This library provides basic arithmetic functions. It is an example how the documentation should be structured.

@defproc[(add [a number?] [b number?]) number?]{
  Returns the sum of @racket[a] and @racket[b].
}

@defproc[(subtract [a number?] [b number?]) number?]{
  Returns the difference between @racket[a] and @racket[b].
}

@defproc[(multiply [a number?] [b number?]) number?]{
  Returns the product of @racket[a] and @racket[b].
}

@defproc[(divide [a number?] [b number?]) number?]{
  Returns the quotient of @racket[a] divided by @racket[b].
  Raises an @racket[exn:fail:contract:divide-by-zero] exception if @racket[b] is zero.

  @examples[
    (divide 10 2)
    (divide 5 0) #:eval (eval:error exn:fail:contract:divide-by-zero?)
  ]
}
