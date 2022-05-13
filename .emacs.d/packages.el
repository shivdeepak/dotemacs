;; Init the package facility
(require 'package)
(package-initialize)

;; (package-refresh-contents)


(unless (package-installed-p 'magit)
  (package-install 'magit))
(global-set-key (kbd "C-c g") 'magit-status)
