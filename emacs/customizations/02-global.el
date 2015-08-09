(require 'multi-term)
(require 'dired-details+)
(require 'color-theme)
(load-theme 'tango-dark)
(when (eq window-system 'ns) 
  (defadvice ns-get-pasteboard (around hack-empty-pasteboard compile activate) 
    (condition-case err 
        ad-do-it 
      (quit (message "%s" (cadr err)) 
            nil)))) 
(setq column-number-mode t)
(defadvice yes-or-no-p (around prevent-dialog activate)
  "Prevent yes-or-no-p from activating a dialog"
  (let ((use-dialog-box nil))
    ad-do-it))

(defadvice y-or-n-p (around prevent-dialog-yorn activate)
  "Prevent y-or-n-p from activating a dialog"
  (let ((use-dialog-box nil))
    ad-do-it))

;; remember to change back to 12
(set-frame-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1" nil t)

(setq multi-term-program "/bin/zsh")

(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable magit upgrade warning
(setq magit-last-seen-setup-instructions "1.4.0")

(provide  '02-global)

