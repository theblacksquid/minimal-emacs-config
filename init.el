


(add-to-list 'package-archives
	                  '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'marginalia)
(require 'marginalia)

(straight-use-package 'orderless)
(require 'orderless)

(straight-use-package 'vertico)
(require 'vertico)

(straight-use-package 'embark)
(require 'embark)

(straight-use-package 'consult)
(require 'consult)

(straight-use-package 'embark-consult)
(require 'embark-consult)

(straight-use-package 'which-key)
(require 'which-key)

(straight-use-package 'rainbow-delimiters)
(require 'rainbow-delimiters)

(straight-use-package 'company)
(require 'company)

(straight-use-package 'dracula-theme)
(load-theme 'dracula t)

(marginalia-mode 1)
(vertico-mode 1)
(which-key-mode 1)
(rainbow-delimiters-mode 1)

(add-hook 'prog-mode-hook
	  #'(lambda ()
	      (company-mode 1)
	      (flycheck-mode 1)))

(setq completion-styles '(orderless basic)
            completion-category-overrides '((file (styles basic partial-completion))))


(menu-bar-mode -1)
(tool-bar-mode -1)

;; open to a text buffer on startup (because i'm using this on mobile a lot)
(setq-default inhibit-startup-screen 1)
(setq inhibit-splash-screen 1)
(setq inhibit-startup-message 1)
(setq initial-scratch-message "")
(setq initial-major-mode 'fundamental-mode)
