(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

(declaim (inline divp))
(defun divp (a b)
  (zerop (mod a b))
  )

(declaim (inline !divp))
(defun !divp (a b)
  (not (divp a b))
  )

(defun leap-year-p (year)
  (and
   (divp year 4)
   (or
    (!divp year 100)
    (divp year 400)
    )
   )
  )

