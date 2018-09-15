;; load path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'custom-theme-load-path "/usr/local/Cellar/emacs/25.3/share/emacs/25.-3/etc/themes/")

;; color themes
(load-file "/usr/local/Cellar/emacs/25.3/share/emacs/25.3/etc/themes/cyberpunk-theme.el")

;; MELPA
; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))
(package-initialize)

;; move-text
(move-text-default-bindings)

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;; Org Mode
(require 'org)
;; Make Org mode work with files ending in .org
;(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

;(setq org-todo-keywords
;  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

(setq org-todo-keywords
  '(
(sequence "TODO" "DOING" "|" "DELEGATED" "POSTPONED" "DONE" "CANCELED")
(sequence "SENT" "APPROVED" "|" "PAID")
))

(setq org-todo-keyword-faces
  '(("TODO" . (:foreground "#ff39a3" :weight bold))
("STARTED" . "#E35DBF")
("CANCELED" . (:foreground "white" :background "#4d4d4d" :weight bold))
("DELEGATED" . "pink")
("POSTPONED" . "#008080")))

;; Misc.
;word wrap
(global-visual-line-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(custom-safe-themes
   (quote
    ("a4a1dbb04b1e08186a39375df6fa561460239ec3c7821f88ada573b66a80ede7" default)))
 '(package-selected-packages (quote (move-text mines)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )