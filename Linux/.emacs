;; Placed in ~/
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-preview-mode org evil markdown-preview-eww markdown-mode+ markdown-mode auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'package)
;; Add Melpa to package list
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Enabling evil mode (Vi controls)
    (require 'evil)
    (evil-mode 1)

;; Org-mode repo
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
;; Enable these modes by default
(setq line-number-mode t)
(setq electric-pair-mode t)

