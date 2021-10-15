;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq user-full-name "Hans Pistor"
      user-mail-address "hpistor@fastmail.com")

(setq doom-theme 'doom-one)

(setq org-directory "~/org/")

(setq display-line-numbers-type t)

(setq-default evil-escape-key-sequence "fd")

(defun toggle-term ()
  "Toggles between terminal and current buffer (creates terminal, if none exists)"
  (interactive)
  (if (string= (buffer-name) "*ansi-term*")
      (switch-to-buffer (other-buffer (current-buffer)))
    (if (get-buffer "*ansi-term*")
        (switch-to-buffer "*ansi-term*")
      (progn
        (ansi-term (getenv "SHELL"))
        (setq show-trailing-whitespace nil)))))

(global-set-key (kbd "C-`") 'toggle-term)
