(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(add-hook 'cider-repl-mode-hook #'enable-paredit-mode)

(add-hook 'clojure-mode-hook #'subword-mode)
(add-hook 'cider-repl-mode-hook #'subword-mode)

(add-hook 'cider-mode-hook 'company-mode)
(add-hook 'cider-repl-mode-hook 'company-mode)

(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

(add-hook 'cider-mode-hook #'eldoc-mode)

(eval-after-load 'aggressive-indent '(define-key aggressive-indent-mode-map (kbd "C-c C-q") nil))

(setq company-idle-delay 0.2)

(setq cider-repl-use-clojure-font-lock t)
(setq cider-show-error-buffer t)
(setq cider-prompt-save-file-on-load 'always-save)
(setq cider-interactive-eval-result-prefix ";; => ")
(setq cider-repl-result-prefix ";; => ")
(setq cider-repl-use-pretty-printing t)
(setq cider-prompt-for-symbol nil)
(setq cider-repl-display-in-current-window t)
(setq nrepl-hide-special-buffers t)
(setq nrepl-log-messages nil)
(setq cider-repl-display-help-banner nil)
(setq cider-auto-jump-to-error 'errors-only)
(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")



(require 'clj-refactor)

(defun my-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import
    (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)



(require 'hl-sexp)

(add-hook 'clojure-mode-hook #'hl-sexp-mode)
(add-hook 'lisp-mode-hook #'hl-sexp-mode)
(add-hook 'emacs-lisp-mode-hook #'hl-sexp-mode)
