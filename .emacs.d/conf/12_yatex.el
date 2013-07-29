;;Tex
(global-set-key [(control h)] 'delete-backward-char)
(setq auto-mode-alist
(cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq load-path (cons "~/Documents/TexPark/yatex1.76" load-path))
(setq tex-command "~/Library/TeXShop/bin/platex2pdf-utf8" dvi2-command "open -a Skim")
(setq YaTeX-kanji-code 4)
(setq YaTeX-template-file "~/.LaTeX-template")
