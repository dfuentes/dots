(require 'auto-complete)
(require 'auto-complete-config)
(require 'go-mode)
(require 'go-autocomplete)
(require 'go-eldoc) ;; Don't need to require, if you install by package.el
;; (add-to-list 'load-path "~/go/src/golang.org/x/tools/cmd/guru")
(require 'go-guru)
(add-hook 'go-mode-hook #'go-guru-hl-identifier-mode)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(setq gofmt-command "goimports")

(add-hook 'go-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (local-set-key (kbd "C-c  i") 'go-goto-imports)
	    (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
            (local-set-key (kbd "C-c C-g") 'magit-status)))

(add-hook 'before-save-hook 'gofmt-before-save)
(provide '20-go)
