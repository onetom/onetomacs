(straight-use-package 'avy)
(avy-setup-default)
(global-set-key (kbd "C-;") 'avy-goto-char-timer)
(global-set-key (kbd "M-g M-g") 'avy-goto-line)
(global-set-key (kbd "M-g w") 'avy-goto-word-1)
(global-set-key (kbd "M-g e") 'avy-goto-word-0)

(provide 'use-avy)
