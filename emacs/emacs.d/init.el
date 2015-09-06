;; Personal informations
(setq user-full-name "Romain Soufflet"
      user-mail-address "romain@soufflet.io")

;; Secret information stored here
(load "~/.emacs.secrets" t)

;; Encoding UTF-8
(prefer-coding-system 'utf-8)
(when (display-graphic-p)
    (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))

;; Remove menu bars
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

;; Prevent the cursor from blinking
(blink-cursor-mode 0)

;; Show line number
(global-linum-mode 1)

;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

;; Set backup in its own directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))


;; Init Packaging system
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/") package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/") package-archives)
(package-initialize)

;; Enable org-mode
(require 'org)
(require 'solarized)

(load-theme 'solarized-dark)

(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
