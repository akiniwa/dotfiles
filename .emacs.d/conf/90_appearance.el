;; タイトルをフルパス
(setq frame-title-format(format "%%f - Emacs@%s" (system-name)))

;; 行数列数表示
(column-number-mode t)
(line-number-mode t)

;; 行番号表示
(global-linum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#00"
                    :height 0.9)

;; 対応する括弧ハイライト
(show-paren-mode 1)
;;(setq show-paren-style 'mixed)

;; findfile時意味のないパスをグレーに
(file-name-shadow-mode t)

;; 画像ファイル
(auto-image-file-mode t)

;; ツールバーメニューバー非表示
(tool-bar-mode -1)
(menu-bar-mode -1)

;; 透過度
(set-frame-parameter (selected-frame) 'alpha '(90 60))

;; 分割時に文字の折り返し
(setq truncate-partial-width-windows t)

;; font

;; font
;;(set-face-attribute 'default nil
;		    :family "Migu 1M"
;		    :height 130)
;;(set-fontset-font
;;(frame-parameter nil 'font)
;; 'japanese-jisx0208
;; '("Migu 1M" . "iso10646-*")
