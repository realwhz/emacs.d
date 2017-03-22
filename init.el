
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
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


;;; Scons config
(require 'init-scons)


;;; Scheme related
(require 'init-scheme)


;;; Clojure related
(require 'init-clojure)


;;; Go related
(require 'init-go)


;;; Evil config
(require 'init-evil)


;;; Helm config
(require 'init-helm)

;;; ag - the silver searcher config
(require 'init-ag)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ag helm-gtags helm-projectile helm evil go-mode cider clojure-mode solarized-theme zenburn-theme exec-path-from-shell fullframe))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
