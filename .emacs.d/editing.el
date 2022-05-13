(add-hook 'before-save-hook 'nuke-trailing-whitespace-in-prog-mode)

(defun nuke-trailing-whitespace-in-prog-mode ()
  (when (derived-mode-p 'prog-mode)
    (delete-trailing-whitespace)))

(global-linum-mode t)
(setq column-number-mode t)
