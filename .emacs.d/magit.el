(use-package magit
  :ensure t)

(global-set-key (kbd "C-c g") 'magit-status)


(use-package diff-hl
  :ensure t
  :hook ((prog-mode . diff-hl-mode)
         (magit-post-refresh . diff-hl-magit-post-refresh))
  :config
  (diff-hl-flydiff-mode)
  (global-diff-hl-mode)
  (diff-hl-dired-mode))
