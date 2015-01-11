(require 'yasnippet)
;; (yas-global-mode 1)

(require 'auto-complete-config)

;; (add-to-list 'ac-dictionary-directories ~/.emacs.d/ac-dict)
(ac-config-default)
;; (setq ac-auto-start nil)
(setq ac-quick-help-delay 1)
(ac-set-trigger-key "TAB")
(define-key ac-completing-map [return] nil)
(define-key ac-completing-map "\r" nil)
(define-key ac-completing-map "<return>" nil)
(define-key ac-mode-map [(control tab)] 'auto-complete)
(setq-default ac-sources '(ac-source-yasnippet
			   ac-source-dictionary
			   ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)


(provide '05-autocomplete)

