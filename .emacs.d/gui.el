(setq inhibit-startup-screen t)


;; mac of gui
(if
    (eql window-system 'ns)

    (progn
      (tool-bar-mode -1)
      (custom-set-variables
       '(initial-frame-alist (quote ((fullscreen . maximized)))))
      (scroll-bar-mode -1)
      )
  )


(set-face-attribute 'default nil :height 200)
