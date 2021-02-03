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

(defun is_managed_by_chezmoi (&optional file)
  (or file (setq file (buffer-file-path)))
  (memq ))


(provide 'chezmoi)
;;; chezmoi.el ends here
