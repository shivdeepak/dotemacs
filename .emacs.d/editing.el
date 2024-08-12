(add-hook 'before-save-hook 'nuke-trailing-whitespace-in-prog-mode)

(defun nuke-trailing-whitespace-in-prog-mode ()
  (when (derived-mode-p 'prog-mode)
    (delete-trailing-whitespace)))

(global-display-line-numbers-mode 1)

(setq column-number-mode t)
(setq fill-column 79)
(global-display-fill-column-indicator-mode 1)

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)
