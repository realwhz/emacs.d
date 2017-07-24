;;; need to enter sam-edit-mode first

(require 'sam)

(global-set-key (kbd "C-c e") 'sam-eval-last-command)

(provide 'init-sam)
