;;ESS
(setq auto-mode-alist
    (cons (cons "\\.R$" 'R-mode) auto-mode-alist))
(autoload 'R-mode "ess-site" "Emacs Speaks Statistics mode" t)
;; R起動時にワーキングディレクトリを訊ねない

;; R起動時ウィンドウ分割設定 {{{3
;;     http://d.hatena.ne.jp/syou6162/20080914/1221308201
;;     http://d.hatena.ne.jp/repose/20080905/1220626866
(defun ess:format-window-1 ()
    (split-window-horizontally)        ;縦分割
    (other-window 1)
    (split-window)                    ;横分割
    (other-window 1)
    )
(add-hook 'ess-pre-run-hook 'ess:format-window-1)
