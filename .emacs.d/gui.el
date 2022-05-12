;; mac of gui
(if
    (eql window-system 'ns)

    (progn
      (tool-bar-mode -1)
      (custom-set-variables
       '(initial-frame-alist (quote ((fullscreen . maximized)))))
      )
  )
