(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
    'package-archives
    '("melpa" . "http://melpa.org/packages/")
    t)
  (package-initialize))

(normal-erase-is-backspace-mode 1)
;; backup file is annoy. so DISABLE it now
(setq make-backup-files nil)
(setq auto-save-default nil)
;;(desktop-save-mode 1)

;; languages

;; (require 'evil)
;; (evil-mode 1)
(setq-default 
  tab-width 2
  standard-indent 2
  indent-tabs-mode nil)      ; makes sure tabs are not used.

(global-linum-mode t) ;; line number

(defun my-github ()
  (interactive)
  (load-theme 'github' t)
  (set-face-attribute 'fringe nil :background "#eee")
  ;;(setq linum-format "%4d ")
  (set-face-attribute 'linum nil :background "#eee"))
(my-github)
;;(load-theme 'tangotango t)

;; auto-complete
(ac-config-default)
