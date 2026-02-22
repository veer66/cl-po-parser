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
  (:M-TEXTUNIT (:COMMENT "#. +> trunk6 stable6" (:LINE-NUMBER . 2787))
  (:COMMENT "#: part/annotwindow.cpp:454" (:LINE-NUMBER . 2788))
  (:COMMENT "#, kde-format" (:LINE-NUMBER . 2789))
  (:TEXTUNIT "msgid"
   "A problem occurred during the execution of the 'dvipng' command."
   (:LINE-NUMBER . 2790))
  (:TEXTUNIT "msgstr" "" (:LINE-NUMBER . 2791)))
 (:M-TEXTUNIT (:COMMENT "#. +> trunk6 stable6" (:LINE-NUMBER . 2793))
  (:COMMENT "#: part/bookmarklist.cpp:116" (:LINE-NUMBER . 2794))
  (:COMMENT "#, kde-format" (:LINE-NUMBER . 2795))
  (:TEXTUNIT "msgctxt" "%1 is the file name" (:LINE-NUMBER . 2796))
  (:TEXTUNIT "msgid" "" (:LINE-NUMBER . 2797) "%1
"
   (:LINE-NUMBER . 2798) "
"
   (:LINE-NUMBER . 2799) "One bookmark" (:LINE-NUMBER . 2800))
  (:TEXTUNIT "msgid_plural" "" (:LINE-NUMBER . 2801) "%1
"
   (:LINE-NUMBER . 2802) "
"
   (:LINE-NUMBER . 2803) "%2 bookmarks" (:LINE-NUMBER . 2804))
  (:TEXTUNIT "msgstr[0]" "" (:LINE-NUMBER . 2805) "%1
"
   (:LINE-NUMBER . 2806) "
"
   (:LINE-NUMBER . 2807) "มีคั่นหน้า %2 แห่ง" (:LINE-NUMBER . 2808)))
 (:M-TEXTUNIT (:COMMENT "#. +> trunk6 stable6" (:LINE-NUMBER . 2810))
  (:COMMENT "#: part/bookmarklist.cpp:132 part/part.cpp:412"
   (:LINE-NUMBER . 2811))
  (:COMMENT "#, kde-format" (:LINE-NUMBER . 2812))
  (:TEXTUNIT "msgid" "Bookmarks" (:LINE-NUMBER . 2813))
  (:TEXTUNIT "msgstr" "ที่คั่นหน้า" (:LINE-NUMBER . 2814)))
  ...
)
```

## License

APACHE-2.0

## Todo

* Handle every case mentioned in https://www.gnu.org/software/gettext/manual/html_node/PO-Files.html
