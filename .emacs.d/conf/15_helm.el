;(require‘helm-config)
(helm-mode 1)

(define-key global-map (kbd "C-o") 'helm-for-files)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)

(require 'helm-themes)
(require 'helm-R)
