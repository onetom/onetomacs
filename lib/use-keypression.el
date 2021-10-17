;;; ===== Keyperssion =====
;; https://github.com/chuntaro/emacs-keypression
(straight-use-package 'keypression)
(setq keypression-use-child-frame nil
      keypression-fade-out-delay 3.0
      keypression-frame-justify 'keypression-left-justified
      keypression-cast-command-name t
      keypression-cast-command-name-format "%s  %s"
      keypression-combine-same-keystrokes t
      keypression-font-face-attribute '(:width normal :height 200 :weight bold))
(setq keypression-x-offset 400
      keypression-y-offset 50)
(keypression-mode -1)

(provide 'use-keypression)
