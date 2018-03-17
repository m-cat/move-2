;;; move-2.el --- More efficient movement commands
;;
;; Filename: move-2.el
;; Description: More efficient movement commands using advanced optimisations
;; Author: Marcin Swieczkowski <scatman@bu.edu>
;; Created: Sat Mar 17 16:39:46 +07 2018
;; Version: 1.0.0
;; Last-Updated:
;;           By:
;;     Update #:
;; URL: https://github.com/m-cat/move-2
;; Keywords: internal tools wp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; About:
;;
;; I made this package because I was sick and tired of all the time I
;; was wasting going forward and backward one character at a time. One
;; day I'm hacking away at some Raxarus 2000 code (a language I
;; invented myself) when suddenly I find inspiration from *my own
;; code*. You see, in Raxarus 2000, we typically execute two
;; instructions *simultaneously*, as an optimization. For example, in
;; C++, printing "hello world" is a task tuple that the compiler
;; interprets as happening in sequence -- first, of course, print
;; "hello", and then print "world". Raxarus 2000, on the other hand,
;; gets a spidey sense that it can save some time here. The compiler
;; "knows" that it can generate the two machine-level instructions for
;; these operations to occur in tandem. How it does this is a very
;; technical discussion which I don't have the time nor inclination to
;; get into right now, and this little About section isn't the right
;; place for that.
;;
;; I'm hoping the relevance of the above paragraph is obvious to you.
;; Taking two operations -- such as movement in a text editor -- and
;; running them simultaneously is revolutionary. The `move-2` package
;; provides three such functions: `move-2-left-twice`,
;; `move-2-right-twice`, and `move-2-left-and-right`. It wraps the
;; movement commands into these three functions and then relies on
;; Emacs Lisp byte compilation to optimize away the unnecessary
;; overhead. Not as elegant as a Robarux 2000 optimization, but it
;; gets the job done!
;;
;; Dedication:
;;
;; This package is written for and dedicated to Richard Stallman, my
;; personal hero.
;;
;; Installing:
;;
;; See README.md for the most current installation instructions.
;;
;; Notes:
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

;; First, define a couple of useful helper functions for moving left
;; and moving right.

(defun move-2-move-left ()
  "Move leftward in Emacs."
  (backward-char)
  )

(defun move-2-move-right ()
  "Move rightward in Emacs."
  (forward-char)
  )

;; Following are the exported interactive commands. Bind them to some
;; global keybindsings of your choice.

;;;###autoload
(defun move-2-left-twice ()
  "Move left, then left again, in the text editor Emacs."
  (interactive)
  (move-2-move-left)
  (move-2-move-left)
  )

;;;###autoload
(defun move-2-right-twice ()
  "Move right, then right again, in the text editor Emacs."
  (interactive)
  (move-2-move-right)
  (move-2-move-right)
  )

;;;###autoload
(defun move-2-left-and-right ()
  "Move left, then right, in the text editor Emacs."
  (interactive)
  (move-2-move-left)
  (move-2-move-right)
  )

(provide 'move-2)
;;; move-2.el ends here
