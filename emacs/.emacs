(require 'package) ;; You might already have this line
(add-to-list 'package-archives
                          '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
      (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(normal-erase-is-backspace-mode 1)
(load-theme 'github t)
;;(load-theme 'tangotango t)

;; backup file is annoy. so DISABLE it now
(setq make-backup-files nil)
(desktop-save-mode 1)
