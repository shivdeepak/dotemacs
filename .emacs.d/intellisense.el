;; lsp python
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp)))) ; or lsp-deferred
;; company mode
(unless (package-installed-p 'company)
  (package-refresh-contents)
  (package-install 'company))

(unless (package-installed-p 'clippy)
  (package-refresh-contents)
  (package-install 'clippy))

(add-hook 'rust-mode-hook 'eglot-ensure)
(add-hook 'rust-mode-hook 'lsp-deferred)
