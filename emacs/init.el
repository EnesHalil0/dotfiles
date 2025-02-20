(setq custom-file "~/.config/emacs/custom.el")
(package-initialize)

(add-to-list 'load-path "~/.config/emacs/local/")

(load "~/.config/emacs/rc/rc.el")
(load "~/.config/emacs/rc/misc-rc.el")

(set-face-attribute 'default nil
                    :family "Iosevka Comfy Motion Fixed"
                    :height 140
                    :weight 'medium)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)
(setq make-pointer-invisible t)
(setq ring-bell-function 'ignore)
(setq inhibit-splash-screen t)

(visual-line-mode 1)
(toggle-word-wrap 1)

(rc/require-theme 'gruvbox)

;;; Ido
(rc/require 'smex 'ido-completing-read+)

(require 'ido-completing-read+)

(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;; relative line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;;; multiple cursors
(rc/require 'multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)

;;; dired
(require 'dired-x)
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
(setq-default dired-dwim-target t)
(setq dired-listing-switches "-alh")
(setq dired-mouse-drag-files t)

;;; magit
(rc/require 'cl-lib)
(rc/require 'magit)

(setq magit-auto-revert-mode nil)

(global-set-key (kbd "C-c m s") 'magit-status)
(global-set-key (kbd "C-c m l") 'magit-log)

(rc/require 'zig-mode)

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

;;; Company
(rc/require 'company)
(require 'company)

;;; LSP Mode
(rc/require 'lsp-mode)
(setq lsp-keymap-prefix "C-\\")

(add-hook 'after-init-hook 'global-company-mode)
