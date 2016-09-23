(setq auto-mode-alist
      (cons '("SConstruct" . python-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("SConscript" . python-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.scons" . python-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.api" . python-mode) auto-mode-alist))

(provide 'init-scons)
