;; ==== Modus Operandi (light) theme & Default Font ====
(straight-use-package 'modus-themes)
(straight-use-package 'plan9-theme)
;; (load-theme 'modus-vivendi t)
(load-theme 'modus-operandi t)
;; (load-theme 'leuven t)
;; (load-theme 'plan9 t)
(message "Theme activated")

;; Modus theme customization, for reference; should be part of the single,
;; global `custom-set-variables`:
(if nil
    (custom-set-variables
     '(modus-themes-bold-constructs t)
     '(modus-themes-diffs 'deuteranopia)
     '(modus-themes-hl-line 'accented-background)
     '(modus-themes-intense-hl-line nil)
     '(modus-themes-mode-line 'borderless-accented-3d)
     '(modus-themes-paren-match 'intense-bold)
     '(modus-themes-scale-headings t)
     '(modus-themes-slanted-constructs t)
     '(modus-themes-success-deuteranopia t)
     '(modus-themes-syntax 'yellow-comments-green-strings)
     '(modus-themes-variable-pitch-ui t)))

;; https://jjasghar.github.io/blog/2017/01/04/changing-fonts-in-emacs/
(progn
  (setq default-font (font-spec :family "Envy Code R"
                                :size 14
				:weight 'regular
				))
  (setq default-font (font-spec :family "Input Mono Compressed"
                                :size 16
				:weight 'regular
				))
  (set-face-attribute 'default nil :font default-font))
;(add-to-list 'default-frame-alist `(font . ,default-font))
;(setq default-frame-alist '((font . #'default-font)))

;; https://github.com/myrjola/diminish.el
(straight-use-package 'diminish) (diminish 'eldoc-mode)

;;; Highlight FIXME / TODO etc in comments:
;; Potential alternative:
;;   https://github.com/vincekd/comment-tags
;;
;; https://github.com/tarsius/hl-todo
(straight-use-package 'hl-todo) (global-hl-todo-mode 1)

;;; Flash line around cursor, when jumping far away from current location
;; https://github.com/Malabarba/beacon
(straight-use-package 'beacon) (beacon-mode 1)

;; https://github.com/nonsequitur/idle-highlight-mode
(straight-use-package 'idle-highlight-mode)

(provide 'init-visuals)
