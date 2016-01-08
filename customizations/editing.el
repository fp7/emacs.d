(global-set-key (kbd "M-/") 'hippie-expand)


(show-paren-mode 1)
(global-hl-line-mode 1)

(setq-default indent-tabs-mode nil)

(require 'saveplace)
(setq-default save-place t)


(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
      

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(defun die-tabs ()
  (interactive)
  (set-variable 'tab-width 2)
  (mark-whole-buffer)
  (untabify (region-beginning) (region-end))
  (keyboard-quit))
  

(setq electric-indent-mode nil)
