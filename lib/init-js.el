;;; ===== JavaScript =====
;; https://github.com/mooz/js2-mode
(straight-use-package 'js2-mode)

;;; ===== nodejs-repl.el =====
;; https://github.com/abicky/nodejs-repl.el
(straight-use-package 'nodejs-repl)
(require 'nodejs-repl-eval)

(add-hook 'js-mode-hook
          (lambda ()
            (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-expression)
            (define-key js-mode-map (kbd "C-c C-j") 'nodejs-repl-send-line)
            (define-key js-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region)
            (define-key js-mode-map (kbd "C-c C-c") 'nodejs-repl-send-buffer)
            (define-key js-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
            (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)
            (define-key js-mode-map (kbd "<C-return>") 'nodejs-repl-eval-dwim)))

(provide 'init-js)
