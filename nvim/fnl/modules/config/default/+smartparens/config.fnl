(local {: autoload} (require :core.lib.autoload))
(local {: setup} (autoload :nvim-autopairs))
(local lisp-ft [ :lisp :racket :scheme])

(setup {:disable_filetype lisp-ft})
