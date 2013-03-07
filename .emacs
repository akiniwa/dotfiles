(global-set-key "\C-h" 'delete-backward-char)
(setq auto-mode-alist 
 (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(column-number-mode t)
(line-number-mode t)
(setq load-path
 (cons (expand-file-name "~/.emacs.d/yatex") load-path))
(setq tex-command "~/.emacs.d/TeXShop/bin/platex2pdf-utf8"
      dvi2-command "open -a Skim"
	  YaTeX-use-font-lock t
	  YaTeX-template-file "~/.emacs.d/.LaTeX-template"
	  )
;; $BLnD;$,CV$$$F$"$k(B directry $B$N(B load-path $B@_Dj(B
;; default $B$G(B load-path $B$,DL$C$F$$$k>l9g$OI,MW$"$j$^$;$s(B
;(setq load-path
				;      (cons (expand-file-name
;	     "/Applications/Emacs.app/Contents/Resources/site-lisp/yatex") load-path))
;; $BJ8>O:n@.;~$N4A;z%3!<%I$N@_Dj(B
;; 1 = Shift_JIS, 2 = ISO-2022-JP, 3 = EUC-JP, 4 = UTF-8
;; default $B$O(B 2
(setq YaTeX-kanji-code 4) ; euc-jp


(add-to-list 'load-path "PATH_TO_WHERE_YOU_UNPACKED_ORGMODE ~/dotfiles/.emacs.d/org-mode")
  (require 'org)
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  (define-key global-map "\C-cl" 'org-store-link)
  (define-key global-map "\C-ca" 'org-agenda)
  (setq org-log-done t)

