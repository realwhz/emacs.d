(require-package 'zenburn-theme)

(require-package 'solarized-theme)

(setq x-underline-at-descent-line t)
(setq solarized-distinct-fringe-background t)

(if (window-system)
    (load-theme 'acme t)
  (load-theme 'minimal-vim t))


(provide 'init-themes)
