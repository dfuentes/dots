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
(provide  '02-global)

