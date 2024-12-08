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

(add-hook 'c++-ts-mode-hook (lambda ()
                              (c-set-style "stroustrup")
                              (setq tab-width 4
                                    c-basic-offset 4
                                    indent-tabs-mode nil
                                    c-eletric-pound-behavior '(alignleft))
                              (c-set-offset 'arglist-intro 'c-lineup-arglist-intro-after-paren)
                              (c-set-offset 'arglist-close 'c-lineup-arglist-close-under-paren)
                              (c-set-offset 'inline-open '0)
                              (c-set-offset 'innamespace '0)
                              (which-function-mode t)
                              (modify-syntax-entry ?_ "w")
                              (highlight-phrase "\\bFIXME\\b\\|\\bTODO\\b\\|\\bBUG\\b\\|\\bXXX\\b" '(hi-yellow))
                              (electric-indent-local-mode -1)))

(provide 'init-treesitter)
