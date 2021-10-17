;; https://www.reddit.com/r/emacs/comments/foof41/my_favorite_feature_of_the_upcoming_27_release_no/
;; WARN Not sure how would this affect the `no-littering` package, so it's disabled for now
;; (setq package-user-dir (expand-file-name "packages" user-emacs-directory))


(setq no-littering-etc-directory
      (expand-file-name "config/" user-emacs-directory))

(setq no-littering-var-directory
      (expand-file-name "data/" user-emacs-directory))

;; https://github.com/emacscollective/no-littering
(straight-use-package 'no-littering)

(require 'no-littering)

(setq auto-save-file-name-transforms
      `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

(setq custom-file (no-littering-expand-etc-file-name "custom.el"))
(load custom-file)

(require 'recentf)
(add-to-list 'recentf-exclude no-littering-var-directory)
(add-to-list 'recentf-exclude no-littering-etc-directory)

(provide 'use-no-littering)
