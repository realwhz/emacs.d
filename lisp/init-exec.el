(require-package 'exec-path-from-shell)

(exec-path-from-shell-initialize)

(setenv "XDG_CONFIG_HOME" "~/.config")

(setq default-directory "~/")

(provide 'init-exec)
