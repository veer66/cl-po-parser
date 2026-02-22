;;;; cl-po-parser.asd

(asdf:defsystem #:cl-po-parser
  :description "A parser for a GNU Gettext po file"
  :author "Vee Satayamas <veerpub@pm.me>"
  :license  "APACHE-2.0"
  :version "0.0.1"
  :serial t
  :depends-on (#:cl-ppcre #:com.inuoe.jzon)
  :components ((:file "package")
               (:file "cl-po-parser")))
