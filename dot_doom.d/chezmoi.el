;;; chezmoi.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 Jack
;;
;; Author: Jack <https://github.com/jack>
;; Maintainer: Jack <jackmdenny@gmail.com>
;; Created: February 01, 2021
;; Modified: February 01, 2021
;; Version: 0.0.1
;; Keywords: Symbol’s value as variable is void: finder-known-keywords
;; Homepage: https://github.com/jack/chezmoi
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

;; TODO make a function to find the destination of the source file
(defun is_managed_by_chezmoi (&optional file)
  (or file (setq file (buffer-file-path))))

;; TODO make a function to ask whether you want to actually edit the sourcefile
;; TODO recreate chezmoi merge with ediff
;; TODO make a function to ask if you want to appy this source file
;; TODO make a function to show all files that have changed with diffs and then ask if you want to apply all the files
;; TODO auto create a diff between the source and destination files

(provide 'chezmoi)
;;; chezmoi.el ends here
