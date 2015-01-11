(require 'auto-complete)
(require 'auto-complete-config)
(require 'go-mode)
(require 'go-autocomplete)

(setq gofmt-command "goimports")

(add-hook 'go-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (local-set-key (kbd "C-c  i") 'go-goto-imports)
	    (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(add-hook 'before-save-hook 'gofmt-before-save)
(provide '20-go)
