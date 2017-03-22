(require-package 'ggtags)

(eval-after-load 'ggtags
  '(progn
     (evil-make-overriding-map ggtags-mode-map 'normal)
     ;; force update evil keymaps after ggtags-mode loaded
     (add-hook 'ggtags-mode-hook #'evil-normalize-keymaps)))

(ggtags-mode t)

(provide 'init-gtags)
