;;;----------------------------------------
;;; init
;;;----------------------------------------


;; language
(set-language-environment 'japanese)

;; char-code
(prefer-coding-system 'utf-8)

;; http://tech.kayac.com/archive/emacs.html
(require 'cl)
(setq byte-compile-warnings
      '(free-vars
        unresolved
        callargs
        redefine
        obsolete
        noruntime
        cl-functions
        interactive-only
        make-local))

;; load-path
(setq load-path (cons "~/.emacs.d/" load-path))
(add-to-list 'load-path "~/.emacs.d/auto-install")
(let ((default-directory "~/.emacs.d/site-lisp/"))
    (setq load-path (cons default-directory load-path))
    (normal-top-level-add-subdirs-to-load-path))

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")
