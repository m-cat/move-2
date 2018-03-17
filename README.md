# Move-2 

Optimised movement commands for Emacs

## About

I made this package because I was sick and tired of all the time I was wasting
going forward and backward one character at a time. One day I'm hacking away at
some Raxarus 2000 code (a language I invented myself) when suddenly I find
inspiration from *my own code*. You see, in Raxarus 2000, we typically execute
two instructions *simultaneously*, as an optimization. For example, in C++,
printing "hello world" is a task tuple that the compiler interprets as happening
in sequence -- first, of course, print "hello", and then print "world". Raxarus
2000, on the other hand, gets a spidey sense that it can save some time here.
The compiler "knows" that it can generate the two machine-level instructions for
these operations to occur in tandem. How it does this is a very technical
discussion which I don't have the time nor inclination to get into right now,
and this little About section isn't the right place for that.

I'm hoping the relevance of the above paragraph is obvious to you. Taking two
operations -- such as movement in a text editor -- and running them
simultaneously is revolutionary. The `move-2` package provides three such
functions: `move-2-left-twice`, `move-2-right-twice`, and
`move-2-left-and-right`. It wraps the movement commands into these three
functions and then relies on Emacs Lisp byte compilation to optimize away the
unnecessary overhead. Not as elegant as a Robarux 2000 optimization, but it gets
the job done!

## Dedication

This package is written for and dedicated to Richard Stallman, my personal hero.

## Installing

Please download the `move-2.el` file and put the following in your `init.el`:

```elisp
(require 'move-2)
(global-set-key (kbd "C-b") 'move-2-left-twice)
(global-set-key (kbd "C-f") 'move-2-right-twice)
```

I'm working on getting this bad boy up on MELPA which will be much easier to install.

## Contributing

All contributions are welcome, but please note that I do require contributors to be 18 years of age or older and/or supervised by their legal guardians. Contributions are not allowed from residents of Canada or Sweden. Legal papers documenting the above facts are required for all contributions.
