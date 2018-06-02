(require-package 'zenburn-theme)

(require-package 'solarized-theme)

(setq x-underline-at-descent-line t)
(setq solarized-distinct-fringe-background t)

(if (window-system)
    (load-theme 'acme t)
  (load-theme 'minimal-vim t))

(if (daemonp)
    (add-hook 'after-make-frame-functions
	      (lambda (frame)
		(when (eq (length (frame-list)) 2)
		  (progn
		    (select-frame frame)
		    (load-theme 'acme t))))))

(provide 'init-themes)
