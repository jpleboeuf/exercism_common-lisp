(in-package #:cl-user)
(defpackage #:two-fer
  (:use #:cl)
  (:export #:twofer))
(in-package #:two-fer)

(defun twofer (&optional (name "you"))
  (let ((name (or name "you")))
    (format nil "One for ~A, one for me." name))
  )
