(add-hook 'go-mode-hook
          (lambda ()
            (setq gofmt-command "goimports")
            (add-hook 'before-save-hook 'gofmt-before-save nil t))
            (load-file "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")
            (local-set-key (kbd "M-.") 'godef-jump))


(add-hook 'go-mode-hook
          'company-mode)

(add-hook 'go-mode-hook
          'flycheck-mode)
