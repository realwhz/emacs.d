(require-package 'zenburn-theme)

(require-package 'solarized-theme)

(setq x-underline-at-descent-line t)
(setq solarized-distinct-fringe-background t)

(if (window-system)
    (load-theme 'solarized-dark t)
  (load-theme 'minimal-vim t))

;;(set-background-color "#FFFFEA")  ; The Acme bg color

(provide 'init-themes)
