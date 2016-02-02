(menu-bar-mode -1)

(global-linum-mode)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq initial-frame-alist '((width . 100) (fullscreen . fullheight) (top . 0) (left . 0)))


(blink-cursor-mode 0)

(setq-default frame-title-format "%b (%f)")


(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
