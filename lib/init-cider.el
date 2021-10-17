;;; ===== CIDER - Clojure IDE =====
(straight-use-package 'cider)
(require 'cider)
(setq cider-invert-insert-eval-p t)
(setq cider-switch-to-repl-on-insert nil)
(setq clojure-toplevel-inside-comment-form t)
(setq cider-print-fn 'pprint)
(setq cider-print-options `(("length" 50) ("right-margin" 70)))
(define-key cider-mode-map (kbd "<C-return>") #'cider-insert-defun-in-repl)

;;; ===== Kaocha runner =====
;; https://github.com/magnars/kaocha-runner.el
(straight-use-package 'kaocha-runner)
(setq kaocha-runner-output-win-max-height 24)
(setq kaocha-runner-extra-configuration "{:kaocha/fail-fast? true}")
(define-key clojure-mode-map (kbd "C-c k t") 'kaocha-runner-run-test-at-point)
(define-key clojure-mode-map (kbd "C-c k r") 'kaocha-runner-run-tests)
(define-key clojure-mode-map (kbd "C-c k a") 'kaocha-runner-run-all-tests)
(define-key clojure-mode-map (kbd "C-c k w") 'kaocha-runner-show-warnings)
(define-key clojure-mode-map (kbd "C-c k h") 'kaocha-runner-hide-windows)
(add-hook 'emacs-lisp-mode 'parinfer-rust-mode)
(add-hook 'clojure-mode 'parinfer-rust-mode)

(straight-use-package 'project)
(straight-use-package 'xref)
(straight-use-package 'eldoc)
(straight-use-package 'eglot)

(provide 'init-cider)
