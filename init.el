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
(require 'init-projectile)


;;; Ivy
(require 'init-ivy)


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

