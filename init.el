(package-initialize)

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


;;; CC mode customization
(require 'init-cc)


;;; CMake/Scons config
(require 'init-scons)

(require 'init-cmake)


;;; Scheme related
(require 'init-scheme)


;;; Clojure related
(require 'init-clojure)


;;; Go related
(require 'init-go)


;;; Evil config
;;(require 'init-evil)


;;; GNU Global
(require 'init-gtags)


;;; Helm config
;;(require 'init-helm)


;;; ag - the silver searcher config
(require 'init-ag)


;;; Projectile
(require 'init-projectile)


;;; Git
(require 'init-git)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (cmake-mode magit zenburn-theme whole-line-or-region solarized-theme projectile go-mode ggtags fullframe exec-path-from-shell cider ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
