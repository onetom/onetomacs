;;; ===== Magit =====
(straight-use-package 'magit)

;;; ===== Fossil =====
;; https://chiselapp.com/user/venks/repository/emacs-fossil/doc/tip/README.md
(straight-use-package 'vc-fossil)
;; (add-to-list 'vc-handled-backends 'Fossil t) ; seems to be added automatically
(setq vc-handled-backends '(Git Fossil Hg SVN)) ; eliminate unused defaults

(provide 'init-version-control)
