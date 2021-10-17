;; Bootstrap `use-package'
(setq-default
 ;; use-package-always-defer t ; Always defer load package to speed up startup time
 use-package-verbose t    ; Don't report loading details
 ;; use-package-expand-minimally t  ; make the expanded code as minimal as possible
 use-package-enable-imenu-support t) ; Let imenu finds use-package definitions

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(provide 'init-use-package)
