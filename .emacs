(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(setq scroll-step 1)
(setq-default indent-tabs-mode nil)
(setq make-backup-files nil)

(global-hl-line-mode 0)
(menu-bar-mode -1)
(tool-bar-mode -1)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile$" . ruby-mode))

(evil-define-key 'insert ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
