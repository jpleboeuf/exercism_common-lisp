(in-package #:cl-user)
(defpackage #:rna-transcription
  (:use #:cl)
  (:export #:to-rna))
(in-package #:rna-transcription)

(defvar nucleotideTransTbl (make-hash-table))
(setf (gethash #\G nucleotideTransTbl) #\C)
(setf (gethash #\C nucleotideTransTbl) #\G)
(setf (gethash #\T nucleotideTransTbl) #\A)
(setf (gethash #\A nucleotideTransTbl) #\U)

(defun to-rna (str)
  "Transcribe a string representing DNA nucleotides to RNA."
  (coerce
   (mapcar (lambda (n) (gethash n nucleotideTransTbl)) (coerce str 'list))
   'string
   )
  )

