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
              clojure-mode-extra-font-locking
              cider
              clj-refactor
              smartparens
              yaml-mode)))
  (dolist (pkg pkgs)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(setq inhibit-startup-message t)



(add-to-list 'load-path "~/.emacs.d/customizations")

(load "editing.el")
(load "ui.el")
(load "navigation.el")
(load "sp.el")
(load "auctex-cfg.el")
(load "clojure.el")
