(message "onetom's chemacs profile")
(add-to-list 'load-path (concat user-emacs-directory "lib"))
(require 'init-use-package)
(require 'use-no-littering)

;; More modern defaults for basic editing features
(setq inhibit-startup-screen t)
(setq scroll-error-top-bottom 1)        ; allow pgup to move to the 1st line
(setq help-window-select t)             ; https://emacs.stackexchange.com/q/21770
(show-paren-mode 1)                     ; highlight matching paren under cursor
(recentf-mode 1)
(savehist-mode 1)
(winner-mode 1)                         ; win layout undo/redo C-c left/right
(tool-bar-mode -1)
(menu-bar-mode 1)
(scroll-bar-mode -1)
(window-divider-mode 1)                 ; thick divider, to help window resize with mouse
(global-visual-line-mode -1)            ; aka soft-wrap
(global-hl-line-mode 1)
(column-number-mode -1)
(display-time-mode -1)
(display-battery-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)       ; https://www.emacswiki.org/emacs/YesOrNoP
(setq explicit-zsh-args '("-i"))        ; "-i" is the default
(require 'em-smart)
(add-to-list 'eshell-modules-list 'eshell-smart)

;; instead of `kill-buffer`, which prompts for buffer name https://superuser.com/a/354878
(global-set-key (kbd "C-x k") #'kill-this-buffer)
(global-set-key (kbd "M-c") #'kill-ring-save)
(global-set-key (kbd "M-v") #'yank)
;; (global-set-key (kbd "C-<tab>") #'other-window)

;; Might reduce flickering, according to
;; https://www.reddit.com/r/emacs/comments/mhdjxb/macos_emacs_with_metal_support/gszrp64
;(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

;; Autocomplete ELisp code with TAB instead of M-TAB
;; Source: https://stackoverflow.com/a/29720155/263983
;; (setq-default tab-always-indent 'complete)

;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Displaying-Boundaries.html
(setq-default fill-column 80)
(global-display-fill-column-indicator-mode 1)

;; https://www.emacswiki.org/emacs/HighlightLongLines
;; NOTE whitespace-style seems to do line-wrap indication differently,
;; depending on whether `tab-mark` is specified or not at the end of the list.
(setq whitespace-style '(face tabs trailing lines missing-newline-at-eof))
(setq whitespace-line-column 80)
(global-whitespace-mode -1)

;; Taken from https://github.com/Ergus/mini_dotemacs
(setq-default auto-revert-verbose nil       ;; not show message when file changes
	      auto-revert-avoid-polling t)  ;; use save signal
(global-auto-revert-mode t)		;; Autoload files changed on disk
(delete-selection-mode t)               ;; Replace selection with typing
(save-place-mode 1)                     ;; Remember point in files

;; Auto-save on focus lost - https://www.emacswiki.org/emacs/AutoSave
(defun save-all () (interactive) (save-some-buffers t))
(add-hook 'focus-out-hook 'save-all)

;; (global-set-key (kbd "s-o") (global-key-binding (kbd "C-x o")))
;; (global-set-key (kbd "s-A") (global-key-binding (kbd "M-x")))
;; (global-key-binding (kbd "s-a"))

;; explicitly reference built-in modules
(straight-use-package 'project)
(straight-use-package 'vc)

;;; ===== crux - collection of ridiculously useful extensions for emacs =====
;; https://github.com/bbatsov/crux
;; https://superuser.com/a/1228716/45605
(straight-use-package 'crux)
(global-set-key [remap move-beginning-of-line] #'crux-move-beginning-of-line)
(global-set-key (kbd "C-c d") #'crux-duplicate-current-line-or-region)

;; https://emacs.stackexchange.com/questions/835/make-buffer-list-take-focus
(global-set-key [remap list-buffers] #'ibuffer)

;;; ===== helpful - Prettier docs =====
;; https://github.com/wilfred/helpful
(straight-use-package 'helpful)
(global-set-key (kbd "C-h f") #'helpful-callable)
(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)
(global-set-key (kbd "C-h o") #'helpful-symbol)
(global-set-key (kbd "C-c C-d") #'helpful-at-point)
(global-set-key (kbd "C-h F") #'helpful-function)
(global-set-key (kbd "C-h C") #'helpful-command)

;;; ===== expand-region =====
(straight-use-package 'expand-region)
(global-set-key (kbd "C-=") #'er/expand-region)
(global-set-key (kbd "M-<up>") #'er/expand-region)
(global-set-key (kbd "M-<down>") #'er/contract-region)

(require 'init-visuals)
(require 'use-ace-window)
(require 'use-avy)
(require 'use-which-key)
;; (require 'use-showkey)
;; (require 'use-keycast)
;; (require 'use-keypression)
(require 'use-keyfreq)
(require 'init-direnv)
;; (require 'init-folding)
;; (require 'use-fancy-dabbrev)
(require 'use-corfu)
(require 'use-vertico)
;; (require 'use-selectrum)
(require 'use-consult)
;; (require 'use-embark)
(require 'init-cider)
(require 'use-inf-clojure)
;; (require 'use-lisp)
;; (require 'init-js)

(straight-use-package
 '(cljstyle-mode :host github :type git :repo "jstokes/cljstyle-mode"))

;;; ===== Nix =====
;; https://github.com/NixOS/nix-mode
(straight-use-package 'nix-mode)

;;; ===== Markdown =====
;; https://github.com/jrblevin/markdown-mode
(straight-use-package 'markdown-mode)

;;; ===== AsciiDoc =====
;; https://github.com/sensorflo/adoc-mode/wiki
;; (straight-use-package 'adoc-mode)

;; (require 'init-reddit-reader.el)

;;; ===== Prodigy (background process manager) =====
;; https://github.com/rejeep/prodigy.el/
;; (straight-use-package 'prodigy)
;; (setq prodigy-services '()) ; remove aserver-startce definitions

;; (require 'init-gini)

(require 'init-version-control)
(server-start)
