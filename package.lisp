;;;; package.lisp

(defpackage #:cl-po-parser
  (:use #:cl)
  (:local-nicknames (#:jzon #:com.inuoe.jzon))
  (:export #:parse-po-file))
