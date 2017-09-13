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
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Atril")
     (output-html "xdg-open"))))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(org-agenda-files
   (quote
    ("~/Dropbox/1.Org/life.org" "~/Dropbox/1.Org/school.org" "~/Dropbox/1.Org/CTF.org")))
 '(package-selected-packages
   (quote
    (flyspell-popup tuareg markdown-preview-mode org evil markdown-preview-eww markdown-mode+ markdown-mode auctex))))
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

;; Evil mode fine undo for granularity of undo
(setq evil-want-fine-undo t)

;; Org-mode repo
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Org-mode keybindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; Enable these modes by default
(electric-pair-mode 1)

;; Make linum-mode a global minor under the name global-linum-mode
(define-globalized-minor-mode global-linum-mode linum-mode
  (lambda () (linum-mode 1)))

(global-linum-mode 1)

(global-visual-line-mode t) ;; To wrap lines like on other text editors like Notepad

;; Highlight LaTeX stuff in org-mode
(eval-after-load 'org
  '(setf org-highlight-latex-and-related '(latex)))

;; Keybindings
(global-set-key (kbd "C-z") 'undo) ; Ctrl+z undo
(global-set-key (kbd "C-y") 'redo) ; Ctrl+y redo

;; Change spellchecker to aspell
(setq-default ispell-program-name "aspell")
(setq ispell-list-command "--list")

;; Enable flyspell by default in the following modes
(add-hook 'org-mode-hook 'turn-on-flyspell)

;; Enable flyspell-popup to automatically popup
(add-hook 'flyspell-mode-hook #'flyspell-popup-auto-correct-mode)
