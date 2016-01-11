(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)

(add-hook 'clojure-mode-hook #'subword-mode)
(add-hook 'cider-repl-mode-hook #'subword-mode)

(add-hook 'clojure-mode-hook 'company-mode)
(add-hook 'cider-repl-mode-hook 'company-mode)

(setq company-idle-delay 0.2)

(require 'clojure-mode-extra-font-locking)

(setq cider-show-error-buffer t)
(setq cider-prompt-save-file-on-load 'always-save)
(setq cider-interactive-eval-result-prefix ";; => ")

;; (require 'clj-refactor)

;; (defun my-clojure-mode-hook ()
;;     (clj-refactor-mode 1)
;;     (yas-minor-mode 1) ; for adding require/use/import
;;     (cljr-add-keybindings-with-prefix "C-c C-m"))

;; (add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
