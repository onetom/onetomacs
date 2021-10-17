;; https://github.com/dacap/keyfreq
;; Collect command usage frequency into ~/.config/emacs/data/keyfreq.el
(straight-use-package 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)
(setq keyfreq-excluded-commands
      '(self-insert-command
        forward-char
        backward-char
        previous-line
        next-line))

(provide 'use-keyfreq)
