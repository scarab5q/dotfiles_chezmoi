;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Jack"
      user-mail-address "jackmdenny@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
(setq doom-theme 'doom-one)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/mynotes/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type "relative")

;; (use-package! evil-colemak-basics
;;   :after evil
;;   :config
;;   (setq evil-colemak-basics-rotate-t-f-j t))

(use-package! undo-tree
  :config
  (global-undo-tree-mode))

(map!
 :desc "; is the new :" :n ";" 'evil-ex
      :desc ": is the new ;" :n ":" 'evil-snipe-repeat
      :desc "redo" :n "U" 'undo-tree-redo
      :desc "undo" :n "u" 'undo-tree-undo)

(cl-defun
    is-managed-by-chezmoi
    (&optional (file (buffer-file-name))) ;; must be a full path
  (if (memq  'nil (member file (shell-command-to-string "chezmoi managed -i files")))))


(use-package chezmoi
  :load-path "chezmoi")

(map!
 :leader
 (:prefix-map ("d" . "dotfiles")
  :desc "chezmoi find" "f" 'chezmoi|find
  :desc "chezmoi write" "w" 'chezmoi|write
  :desc "chezmoi git status" "g" 'chezmoi|magit-status))

;; (map! :prefix )
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
