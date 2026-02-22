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
 ...
 (:M-TEXTUNIT (:COMMENT "#. +> trunk6 stable6" :LINE-NUMBER 3357)
  (:COMMENT "#: part/dlgeditor.cpp:29" :LINE-NUMBER 3358)
  (:COMMENT "#, fuzzy, kde-format" :LINE-NUMBER 3359)
  (:COMMENT "#| msgctxt \"Text editor\"" :LINE-NUMBER 3360)
  (:COMMENT "#| msgid \"Custom Text Editor\"" :LINE-NUMBER 3361)
  (:TEXTUNIT "msgctxt" "@item:inlistbox Config dialog, editor page"
   :LINE-NUMBER 3362)
  (:TEXTUNIT "msgid" "Custom Text Editor" :LINE-NUMBER 3363)
  (:TEXTUNIT "msgstr" "เครื่องมือแก้ไขข้อความกำหนดเอง" :LINE-NUMBER 3364))
 (:M-TEXTUNIT (:COMMENT "#. +> trunk6 stable6" :LINE-NUMBER 3366)
  (:COMMENT "#: part/dlgeditor.cpp:30" :LINE-NUMBER 3367)
  (:COMMENT "#, fuzzy, kde-format" :LINE-NUMBER 3368)
  (:COMMENT "#| msgctxt \"Text editor\"" :LINE-NUMBER 3369)
  (:COMMENT "#| msgid \"Kate\"" :LINE-NUMBER 3370)
  (:TEXTUNIT "msgctxt" "@item:inlistbox Config dialog, editor page"
   :LINE-NUMBER 3371)
  (:TEXTUNIT "msgid" "Kate" :LINE-NUMBER 3372)
  (:TEXTUNIT "msgstr" "โปรแกรม Kate" :LINE-NUMBER 3373))
  ...
)
```

## License

APACHE-2.0

## Todo

* Handle every case mentioned in https://www.gnu.org/software/gettext/manual/html_node/PO-Files.html
