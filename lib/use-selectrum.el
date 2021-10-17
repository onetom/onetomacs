;;; ===== mini-frame =====
;; https://github.com/muffinmad/emacs-mini-frame
;; (straight-use-package 'mini-frame)
;; (mini-frame-mode 1)

;;; ===== Prescient =====
;; https://github.com/raxod502/prescient.el
(straight-use-package 'prescient)

;;; ===== Selectrum =====
;; https://github.com/raxod502/selectrum
;;
(straight-use-package 'selectrum)
(selectrum-mode +1)
(setq selectrum-num-candidates-displayed 15)

(straight-use-package 'selectrum-prescient)

; to make sorting and filtering more intelligent
(selectrum-prescient-mode +1)

; to save your command history on disk, so the sorting gets more
; intelligent over time
(prescient-persist-mode +1)

;;; ===== Marginalia =====
;; https://github.com/minad/marginalia
;; Enable richer annotations using the Marginalia package
(use-package marginalia
  :bind (:map minibuffer-local-map
              ("C-M-a" . marginalia-cycle))
              ;; When using the Embark package, you can bind `marginalia-cycle'
              ;; as an Embark action!
              ;;:map embark-general-map
              ;;     ("A" . marginalia-cycle)


  ;; The :init configuration is always executed (Not lazy!)
  :init

  ;; Must be in the :init section of use-package such that the mode gets
  ;; enabled right away. Note that this forces loading the package.
  (marginalia-mode)

  ;; When using Selectrum, ensure that Selectrum is refreshed
  ;; when cycling annotations.
  (advice-add #'marginalia-cycle :after
              (lambda () (when (bound-and-true-p selectrum-mode)
                           (selectrum-exhibit))))

  ;; Prefer richer, more heavy, annotations over the lighter default variant.
  ;; E.g. M-x will show the documentation string additional to the keybinding.
  ;; By default only the keybinding is shown as annotation.
  ;; Note that there is the command `marginalia-cycle' to
  ;; switch between the annotators.
  (setq marginalia-annotators
        '(marginalia-annotators-light
          marginalia-annotators-heavy
          nil)))

(provide 'use-selectrum)
