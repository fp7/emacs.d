(menu-bar-mode -1)

(global-linum-mode)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(setq initial-frame-alist '((fullscreen . fullwidth) (heigth. 1000) (top . 0) (left . 0)))

(setq mouse-yank-at-point t)
(blink-cursor-mode 0)

(setq-default frame-title-format "%b (%f)")
