;;; ===== Direnv =====
;; (straight-use-package 'direnv)
;; (direnv-mode)
;; (setq direnv-always-show-summary nil)

;;; ===== Envrc =====
;; https://github.com/purcell/envrc
(straight-use-package 'envrc)
(envrc-global-mode 1)

(provide 'init-direnv)
