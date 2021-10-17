;;; ===== inf-clojure =====
;; https://github.com/clojure-emacs/inf-clojure
(straight-use-package 'inf-clojure)
(require 'inf-clojure)
(setq clojure-toplevel-inside-comment-form t)
(define-key inf-clojure-minor-mode-map (kbd "<C-return>") #'inf-clojure-eval-defun)
(define-key inf-clojure-mode-map (kbd "C-c C-z") #'other-window)
(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)
(inf-clojure-update-feature
 'babashka 'completion
 "((doseq [var (sort (clojure.repl/apropos \"%s\"))] (println (str var))) (prn \"XXX\"))")
(inf-clojure-update-feature
 'babashka 'completion
 "((doseq [var (sort (clojure.repl/apropos \"%s\"))] (println (str var))) (prn \"XXX\"))")

(provide 'use-inf-clojure)
