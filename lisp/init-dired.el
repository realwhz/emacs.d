(setq dired-listing-switches "-alF")

(add-hook 'dired-load-hook
	  (lambda ()
	    (load "dired-x")))

(add-hook 'dired-mode-hook
	  (lambda ()
	    ))

(autoload 'dired-jump "dired-x"
  "Jump to Dired buffer corresponding to current buffer." t)

(autoload 'dired-jump-other-window "dired-x"
  "Like \\[dired-jump] (dired-jump) but in other window." t)

(define-key global-map "\C-x\C-j" 'dired-jump)
(define-key global-map "\C-x4\C-j" 'dired-jump-other-window)

(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil))


(provide 'init-dired)
