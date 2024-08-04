(add-hook 'before-save-hook 'nuke-trailing-whitespace-in-prog-mode)

(defun nuke-trailing-whitespace-in-prog-mode ()
  (when (derived-mode-p 'prog-mode)
    (delete-trailing-whitespace)))

(global-display-line-numbers-mode 1)

(setq column-number-mode t)
(setq fill-column 79)
(global-display-fill-column-indicator-mode 1)
