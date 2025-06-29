;;;; cl-po-parser.lisp

(in-package #:cl-po-parser)

(defun parse-msg-line (line)
  (multiple-value-bind (main-matched-string groups)
      (cl-ppcre:scan-to-strings "(msg[\\w_\\[\\]]+)\\s+(\".+)" line)
    (declare (ignore main-matched-string))
    groups))

(defun blank-line-p (line)
  (cl-ppcre:all-matches "^\\s*$" line))

(defun comment-p (line)
  (cl-ppcre:all-matches "^#" line))

(defun parse-po-file (po-pathname)
  (with-open-file (f po-pathname)
    (let ((doc '())
	  (m-tu '())
	  (tu '()))
      (loop for line = (read-line f nil nil)
	    while line
	    do
	       (block proc-line
		 (when (comment-p line)
		   (push (list :COMMENT line) m-tu)
		   (return-from proc-line))

		 (when (blank-line-p line)
		   (when m-tu
		     (when tu
		       (push (reverse tu) m-tu)
		       (setq tu '()))
		     (push (cons :M-TEXTUNIT (reverse m-tu)) doc)
		     (setq m-tu '()))
		   (return-from proc-line))

		 (let ((msg-info (parse-msg-line line)))
		   (when msg-info
		     (destructuring-bind (msg-key msg-str)
			 (coerce msg-info 'list)
		       (when tu
			 (push (reverse tu) m-tu)
			 (setq tu '()))
		       (push :TEXTUNIT tu)
		       (push msg-key tu)
		       (push (jzon:parse msg-str) tu))
		     (return-from proc-line)))

		 (push (jzon:parse line) tu))
	       finally
		  (when m-tu
		    (push (cons :M-TEXTUNIT (reverse m-tu)) doc)))
      (reverse doc))))
