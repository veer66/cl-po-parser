# cl-po-parser
### _Vee Satayamas <vsatayamas@gmail.com>_

cl-po-parser is a Common Lisp package for parsing a GNU Gettext po file.

### Example

```Lisp
(ql:quickload :cl-po-parser)
(cl-po-parser:parse-po-file #P"~/Develop/kde-l10n-th/messages/okular/okular.po")
```

## License

APACHE-2.0

