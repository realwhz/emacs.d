;;; init-line.el --- visual line mark mode for GNU Emacs
;;; Copyright (C) 2017 Hongzheng Wang <wanghz@gmail.com>

;; This file is not part of Emacs but is distributed under the same
;; conditions as Emacs.

;;; Code:

(defvar visual-line-mark-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map [remap next-line] 'visual-line-mark-next-line)
    (define-key map [remap previous-line] 'visual-line-mark-previous-line)
    map)
  "Keymap used in line mark mode")

(defun visual-line-mark-calibrate ()
    "Helper function -- adjust positions of point and mark depending on their order"
  (if (>= (point) (mark t))
      (progn
	(exchange-point-and-mark)
	(beginning-of-line)
	(exchange-point-and-mark)
	(end-of-line))
    (exchange-point-and-mark)
    (end-of-line)
    (exchange-point-and-mark)
    (beginning-of-line)))

(defun visual-line-mark-next-line (&optional n)
  "Like `next-line' but selects the whole line."
  (interactive "p")
  (forward-line n)
  (visual-line-mark-calibrate))

(defun visual-line-mark-previous-line (&optional n)
  "Like `previous-line' but selects the whole line."
  (interactive "p")
  (forward-line (- n))
  (visual-line-mark-calibrate))

(define-minor-mode visual-line-mark-mode
  "Toggle use of visual line mark minor mode"
  nil nil 'visual-line-mark-mode-map
  (when visual-line-mark-mode
    (add-hook 'deactivate-mark-hook
  	      (lambda ()
  		(visual-line-mark-mode -1)
  		(setq visual-line-mark-mode-last nil)))
    (unless (region-active-p)
      (beginning-of-line)
      (push-mark (point) t t)
      (end-of-line)
      (message "Mark set (line mode)"))))

(global-set-key [?\C-x ?l] 'visual-line-mark-mode)


(provide 'init-line)
