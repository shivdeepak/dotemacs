;; setup paths
(setenv "CONDA_PREFIX"  "/opt/homebrew/anaconda3")
(setq conda-bin-dir (expand-file-name "bin" (getenv "CONDA_PREFIX")))
(setenv "PATH" (concat (getenv "PATH") ":" conda-bin-dir))
(setq exec-path (append exec-path '(conda-bin-dir)))

;; flycheck
(add-hook 'python-mode-hook 'flycheck-mode)

(setq flycheck-python-flake8-executable
      (expand-file-name "flake8" conda-bin-dir))

(with-eval-after-load 'flycheck
  (lambda ()
    (if (derived-mode-p 'python-mode)
	(
	 ;; setup ~/.flake8 config file
	 (setq-default flycheck-flake8rc
		       (expand-file-name ".flake8" (getenv "HOME")))
	 ;; disable python-mypy and python-pylint and
	 ;; only keep python-flake8
	 (setq-default flycheck-disabled-checkers
		       '(python-mypy python-pylint))
	 ;; select python-flake8 checker
	 (flycheck-select-checker 'python-flake8))
      )
    )
  )

(global-set-key (kbd "C-c f l") 'flycheck-list-errors)

;; autopep8
;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(add-hook 'python-mode-hook
          (lambda ()
	    (local-set-key (kbd "C-c p") 'py-autopep8-buffer)))
