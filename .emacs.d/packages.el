;; Init the package facility
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; (package-refresh-contents)

;; magit
(unless (package-installed-p 'magit)
  (package-refresh-contents)
  (package-install 'magit))

;; diff-hl
(unless (package-installed-p 'diff-hl)
  (package-refresh-contents)
  (package-install 'diff-hl))

;; flycheck
(unless (package-installed-p 'flycheck)
  (package-refresh-contents)
  (package-install 'flycheck))

;; autopep8
(unless (package-installed-p 'py-autopep8)
  (package-refresh-contents)
  (package-install 'py-autopep8))

;; rust-mode
(unless (package-installed-p 'rust-mode)
  (package-refresh-contents)
  (package-install 'rust-mode))
