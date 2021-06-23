
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0feb7052df6cfc1733c1087d3876c26c66410e5f1337b039be44cb406b6187c6" "27a1dd6378f3782a593cc83e108a35c2b93e5ecc3bd9057313e1d88462701fcd" default)))
 '(package-selected-packages (quote (undo-tree js2-mode moe-theme lua-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; theme
(load-theme 'moe-dark)

;; open & save file
(setq vc-follow-symlinks t)
(add-hook 'write-file-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(require 'uniquify)

;; recentf
(require 'recentf)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(recentf-mode 1)
(setq recentf-max-menu-items 35)
(setq kill-ring-max 200)

;; windmove
(global-set-key (kbd "M-S") 'windmove-up)
(global-set-key (kbd "M-X") 'windmove-down)
(global-set-key (kbd "M-C") 'windmove-right)
(global-set-key (kbd "M-Z") 'windmove-left)

;; expand
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

(setq scroll-margin 3)
(setq visible-bell t)
(setq kill-ring-max 200)

(require 'undo-tree)
(global-undo-tree-mode)
(global-set-key (kbd "C-M-_") 'undo-tree-redo)
(global-set-key (kbd "M-?") 'undo-tree-redo)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
