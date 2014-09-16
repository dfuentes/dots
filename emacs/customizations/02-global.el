(require 'dired-details+)
(require 'color-theme)
(load-theme 'tango-dark)
(when (eq window-system 'ns) 
  (defadvice ns-get-pasteboard (around hack-empty-pasteboard compile activate) 
    (condition-case err 
        ad-do-it 
      (quit (message "%s" (cadr err)) 
            nil)))) 
(provide  '02-global)

