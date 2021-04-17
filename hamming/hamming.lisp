(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))
(in-package #:hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands."
  (if (not (eq (length dna1) (length dna2))) nil
      (length
       (delete-if #'(lambda (n) (equalp (first n) (second n)))
                  (mapcar #'list (coerce dna1 'list) (coerce dna2 'list))
                  )
       )
      )
  )

