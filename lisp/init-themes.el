(require-package 'zenburn-theme)

(require-package 'solarized-theme)

(if (window-system)
    (load-theme 'solarized-light t)
  (load-theme 'minimal-vim t))

(provide 'init-themes)
