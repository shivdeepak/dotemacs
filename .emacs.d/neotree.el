(unless (package-installed-p 'neotree)
  (package-refresh-contents)
  (package-install 'neotree))

(defun neotree-refesh-and-toggle ()
  "A custom function that does something."
  (interactive)
  (if (neo-global--window-exists-p)
      (neotree-hide)
    (neotree-refresh)))

(require 'neotree)
(global-set-key (kbd "C-`") 'neotree-refesh-and-toggle)
