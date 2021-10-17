;;; ===== Embark for acting on completion candidates or text at point =====
;; https://github.com/oantolin/embark
(use-package embark
  :ensure t
  :bind
  ("C-S-a" . embark-act)               ; pick some comfortable binding
  :config
  ;; For Selectrum users:
  (defun current-candidate+category ()
    (when selectrum-active-p
      (cons (selectrum--get-meta 'category)
            (selectrum-get-current-candidate))))

  (add-hook 'embark-target-finders #'current-candidate+category)

  (defun current-candidates+category ()
    (when selectrum-active-p
      (cons (selectrum--get-meta 'category)
            (selectrum-get-current-candidates
             ;; Pass relative file names for dired.
             minibuffer-completing-file-name))))

  (add-hook 'embark-candidate-collectors #'current-candidates+category)

  ;; No unnecessary computation delay after injection.
  (add-hook 'embark-setup-hook 'selectrum-set-selected-candidate)

  ;; Integrate with keycast.el
  (defun store-action-key+cmd (cmd)
    (setq keycast--this-command-keys (this-single-command-keys)
          keycast--this-command cmd))

  (advice-add 'embark-keymap-prompter :filter-return #'store-action-key+cmd)

  (defun force-keycast-update (&rest _)
    (force-mode-line-update t))

  (dolist (cmd '(embark-act embark-act-noexit embark-become))
    (advice-add cmd :before #'force-keycast-update)))

(provide 'use-embark)
