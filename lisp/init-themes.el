(require-package 'zenburn-theme)

(require-package 'solarized-theme)

(if (window-system)
    (load-theme 'minimal-vim t)
  (load-theme 'minimal-vim t))

(provide 'init-themes)
