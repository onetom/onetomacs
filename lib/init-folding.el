;;; ===== bicycle =====
;; https://github.com/tarsius/bicycle
(straight-use-package 'outline :no-clone)
(diminish 'outline-minor-mode)
(add-hook 'prog-mode-hook 'outline-minor-mode)
;;(add-hook 'prog-mode-hook 'hs-minor-mode)

(use-package bicycle
  :after outline
  :bind (:map outline-minor-mode-map
              ([C-tab] . bicycle-cycle)
              ([backtab] . bicycle-cycle-global)))

(provide 'init-folding)
