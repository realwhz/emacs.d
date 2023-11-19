(setq treesit-language-source-alist
      '((cpp "https://github.com/tree-sitter/tree-sitter-cpp")
        (c "https://github.com/tree-sitter/tree-sitter-c")
	(rust "https://github.com/tree-sitter/tree-sitter-rust")
	(python "https://github.com/tree-sitter/tree-sitter-python")
	(go "https://github.com/tree-sitter/tree-sitter-go")
	(bash "https://github.com/tree-sitter/tree-sitter-bash")))

;; (dolist (lang treesit-language-source-alist)
;;   (unless (treesit-language-available-p (car lang))
;;     (treesit-install-language-grammar (car lang))))

(setq major-mode-remap-alist
 '((c-mode . c-ts-mode)
   (c++-mode . c++-ts-mode)
   (rust-mode . rust-ts-mode)
   (python-mode . python-ts-mode)
   (go-mode . go-ts-mode)
   (bash-mode . bash-ts-mode)))

(provide 'init-treesitter)
