
(add-to-list 'package-archives
	                  '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(require 'marginalia)
(require 'orderless)
(require 'vertico)
(require 'embark)
(require 'consult)
(require 'embark-consult)
(require 'which-key)
(require 'rainbow-delimiters)
(require 'company)

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


(menu-bar-mode nil)
(tool-bar-mode nil)
