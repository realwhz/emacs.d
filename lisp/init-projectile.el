(require-package 'projectile)

(defun schnouki/projectile-ag (orig-fun &rest args)
  (let ((grep-find-ignored-directories (copy-sequence grep-find-ignored-directories)))
    (apply orig-fun args)))
(advice-add 'projectile-ag :around #'schnouki/projectile-ag)
;; (advice-remove 'projectile-ag #'schnouki/projectile-ag)

(projectile-mode t)

(provide 'init-projectile)
