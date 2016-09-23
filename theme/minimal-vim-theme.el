(deftheme minimal-vim
  "A minimal theme similar to VIM default theme")

(custom-theme-set-faces
 'minimal-vim

 `(default ((t (:foreground "black" :background "white"))))

 `(region ((t (:background "grey"))))

 `(dired-directory ((t (:foreground "blue"))))
 `(font-lock-builtin-face ((t (:foreground "black"))))
 `(font-lock-comment-face ((t (:foreground "blue"))))
 `(font-lock-constant-face ((t (:foreground "magenta"))))
 `(font-lock-function-name-face ((t (:foreground "black"))))
 `(font-lock-keyword-face ((t (:foreground "forest green" :weight bold))))
 `(font-lock-preprocessor-face ((t (:foreground "purple"))))
 `(font-lock-string-face ((t (:foreground "magenta"))))
 `(font-lock-type-face ((t (:foreground "black"))))
 `(font-lock-variable-name-face ((t (:foreground "black"))))
 `(compilation-info ((t (:foreground "blue"))))
 )

(provide-theme 'minimal-vim)
