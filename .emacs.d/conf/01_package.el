;; package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;研究室で使うときは
;;(setq url-proxy-services '(("http"."www-proxy.waseda.jp:8080")))
