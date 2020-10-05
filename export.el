;;; export.el --- deadbeef

;; Copyright (C) 2020 Kodaira Jotaro

;; Author: Kodaira Jotaro <deadbeef@hugahuga.com>
;; Version: 0.1
;; Package-Requires: ((request ))
;; Keywords: emacs, snapshot
;; URL: https://github.com/I-love-bin

;;;Commentary:

;; Make a snapshot

;;; code:

(require 'f)

(defun export ()
 "Export string."
 (interactive)
 (setq name (substring (shell-command-to-string "whoami") 0 -1))
 (run-at-time "3 min" 90 (lambda () (exportStr))))

(defun exportStr ()
 (setq bufferStr (buffer-string))
 "Modify this path."
 (f-write-text bufferStr 'utf-8 (concat "." name "_" (buffer-name) ".ss")))

(provide 'export)
;;; export.el ends here
