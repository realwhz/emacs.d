;;(package-initialize)

(when (version<= emacs-version "24")
  (error "Your Emacs is too old"))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(add-to-list 'custom-theme-load-path (expand-file-name "theme" user-emacs-directory))

;;; Boot up config
(require 'init-utils)


;;; Packages config
(require 'init-packages)


;;; Environment variables config
(require 'init-exec)


;;; GUI config
(require 'init-gui)

(require 'init-themes)


;;; Misc config
(require 'init-misc)

(require 'init-text)


;;; Projectile
;(require 'init-projectile)


;;; Ivy
;(require 'init-ivy)


;;; Ripgrep
(require 'init-rg)


;;; Dired
(require 'init-dired)


;;; Git
(require 'init-git)


;;; LSP client
(require 'init-lsp)


;;; CC mode customization
(require 'init-cc)


;;; CMake
(require 'init-cmake)


;;; Scheme related
(require 'init-scheme)


;;; Clojure related
(require 'init-clojure)


;;; Go related
(require 'init-go)


;;; Line mark mode
(require 'init-line)


;;; Org
(require 'init-org)


;;; Sam
(require 'init-sam)

;;; Treesitter
;;(require 'init-treesitter)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(go-mode cider clojure-mode cmake-mode rg dot-mode exec-path-from-shell fullframe)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
