(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://stable.melpa.org/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


(let ((pkgs '(rainbow-delimiters
              auctex
              haskell-mode
              projectile
              company
              company-ghc
              clojure-mode
              cider
              clj-refactor
              aggressive-indent
              yaml-mode
              go-mode
              company-go
              flycheck)))
  (dolist (pkg pkgs)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(setq inhibit-startup-message t)

(add-to-list 'load-path "~/.emacs.d/customizations")

(load "editing.el")
(load "ui.el")
(load "navigation.el")
(load "auctex-cfg.el")
(load "clojure.el")
(load "go.el")
