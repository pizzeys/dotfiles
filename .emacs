(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(setq scroll-step 1)
(setq-default indent-tabs-mode nil)
(setq make-backup-files nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
