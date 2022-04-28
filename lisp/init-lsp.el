(require-package 'lsp-mode)

(add-hook 'c-mode-common-hook 'lsp)

(require-package 'lsp-ui)
(require-package 'lsp-ivy)
(require-package 'lsp-treemacs)

(provide 'init-lsp)
