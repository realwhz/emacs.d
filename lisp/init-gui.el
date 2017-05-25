(if (window-system)
    (progn
      (setq default-frame-alist
            '((width . 90)
              (height . 40)
              (font . "Monospace-11")
              (fullscreen . maximized)))
      (tool-bar-mode -1))
  (menu-bar-mode -1))


(setq mouse-wheel-scroll-amount '(3 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

(setq inhibit-startup-screen t)

(setq column-number-mode t)

(setq frame-title-format
      '(:eval (if (buffer-file-name)
                  (concat
                   (file-name-nondirectory buffer-file-name)
                   " ("
                   (directory-file-name
                    (abbreviate-file-name
                     (file-name-directory buffer-file-name)))
                   ") - emacs")
                "%b")))


(provide 'init-gui)
