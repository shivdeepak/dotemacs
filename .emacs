;; mac of gui
(if
    (eql window-system 'ns)

    (progn
      (tool-bar-mode -1)
      (toggle-frame-maximized)
      )
  )
