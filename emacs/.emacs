(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
    'package-archives
    '("melpa" . "http://melpa.org/packages/")
    t)
  (package-initialize))

(normal-erase-is-backspace-mode 1)
(load-theme 'github t)
;;(load-theme 'tangotango t)

;; backup file is annoy. so DISABLE it now
(setq make-backup-files nil)
(desktop-save-mode 1)

;; languages
