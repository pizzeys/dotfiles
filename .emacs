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

 ;;; C-c as general purpose escape key sequence.
   ;;;
   (defun my-esc (prompt)
     "Functionality for escaping generally.  Includes exiting Evil insert state and C-g binding. "
     (cond
      ;; If we're in one of the Evil states that defines [escape] key, return [escape] so as
      ;; Key Lookup will use it.
      ((or (evil-insert-state-p) (evil-normal-state-p) (evil-replace-state-p) (evil-visual-state-p)) [escape])
      ;; This is the best way I could infer for now to have C-c work during evil-read-key.
      ;; Note: As long as I return [escape] in normal-state, I don't need this.
      ;;((eq overriding-terminal-local-map evil-read-key-map) (keyboard-quit) (kbd ""))
      (t (kbd "C-g"))))
   (define-key key-translation-map (kbd "C-c") 'my-esc)
   ;; Works around the fact that Evil uses read-event directly when in operator state, which
   ;; doesn't use the key-translation-map.
   (define-key evil-operator-state-map (kbd "C-c") 'keyboard-quit)
   ;; Not sure what behavior this changes, but might as well set it, seeing the Elisp manual's
   ;; documentation of it.
   (set-quit-char "C-c")
