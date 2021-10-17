(erc-tls)
(setq erc-server "irc.libera.chat"
      erc-nick "onetom"
      erc-user-full-name "Tamas Herman"
      erc-track-shorten-start 8
      erc-autojoin-channels-alist '(("irc.libera.chat" "#systemcrafters"))
      erc-kill-buffer-on-part t
      erc-auto-query 'bury)

(setq erc-fill-column 80
      erc-fill-function 'erc-fill-static-center
      erc-fill-static-center 20
      erc-track-exclude '("#emacs")
      erc-track-exclude-type '("JOIN" "NICK" "PART" "QUIT" "MODE" "AWAY")
      erc-hide-list '("JOIN" "NICK" "PATH" "QUIT" "MODE" "AWAY")
      
      ;; don't notify about server-level messages
      erc-track-exclude-server-buffer t

      erc-track-visibility nil ; t / visible / selected-visibile
      )

(add-to-list 'erc-modules 'notifications)     

(provide use-erc)
