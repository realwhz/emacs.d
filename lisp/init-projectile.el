(require-package 'projectile)

(setq projectile-completion-system 'ivy)
(setq projectile-switch-project-action #'treemacs)

(projectile-mode 1)

(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)


(provide 'init-projectile)
