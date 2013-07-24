;; keybind
(define-key global-map (kbd "C-h") 'delete-backward-char)
(define-key global-map (kbd "M-?") 'help-for-help)
(define-key global-map (kbd "C-x C-h") 'help-command)

;; タブキー
(setq c-tab-always-indent t)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq indent-line-function 'indent-relative-maybe)

;; returnで改行とインデント
(define-key global-map (kbd "C-m") 'newline-and-indent)

;; C-k
(setq kill-whole-line t)
