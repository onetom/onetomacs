;; https://github.com/jrosdahl/fancy-dabbrev
(straight-use-package 'fancy-dabbrev)
(require 'fancy-dabbrev)
;; (global-fancy-dabbrev-mode)
(add-hook 'prog-mode-hook #'fancy-dabbrev-mode)

;; If you want TAB to indent the line like it usually does when the cursor
;; is not next to an expandable word, use 'fancy-dabbrev-expand-or-indent
;; instead of `fancy-dabbrev-expand`:
;; (global-set-key (kbd "<tab>") 'fancy-dabbrev-expand)
;; (global-set-key (kbd "<tab>") 'fancy-dabbrev-expand-or-indent)
;; (global-set-key (kbd "<backtab>") 'fancy-dabbrev-backward)

;; FIXME This interferes with the TAB in minibuffers.
;; Even if the mode is not enabled, it just inserts a TAB char in C-x C-f
;; If it's enabled, it shows a popup within the minibuffer, instead of the
;; default completion of the minibuffer (which can still be accessed with `?`)

(provide 'use-fancy-dabbrev)
