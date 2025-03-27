# cl-po-parser
### _Vee Satayamas <vsatayamas@gmail.com>_

cl-po-parser is a Common Lisp package for parsing a GNU Gettext po file.

### Ultralisp

This package is available on [Ultralisp](https://ultralisp.org/).

### Usage example

```Lisp
(ql:quickload :cl-po-parser)
(cl-po-parser:parse-po-file #P"~/Develop/kde-l10n-th/messages/okular/okular.po")
```

### Parsing result

```Lisp
(
;; ...
(:M-TEXTUNIT (:COMMENT "#. +> trunk6 stable6")
  (:COMMENT "#: part/videowidget.cpp:503") (:COMMENT "#, kde-format")
  (:TEXTUNIT "msgstr" "หยุด")
  (:TEXTUNIT "msgid" "Videos not supported in this okular"))
 (:M-TEXTUNIT (:COMMENT "#. +> trunk6 stable6")
  (:COMMENT "#: part/videowidget.cpp:507") (:COMMENT "#, kde-format")
  (:TEXTUNIT "msgstr" "")
  (:TEXTUNIT "msgid" "Videos not supported in this Okular"))
;; ...
)
```

## License

APACHE-2.0

