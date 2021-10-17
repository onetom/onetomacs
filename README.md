# Intro

Hi, I'm @onetom and this is my Emacs configuration, built from scratch.

I use it on macOS only, with the [emacs-mac][] variant of Emacs, made by
Mitsuharu Yamamoto (aka `@railwaycat`).

I started building it, after I tried tons of other configuration systems, like

* Doom Emacs
* Spacemacs
* Prelude
* Centaur Emacs
* and so on...

I don't use it for work yet, because it still lacks lots of features, which I
use daily in IntelliJ with Cursive.

[emacs-mac]: https://bitbucket.org/mituharu/emacs-mac/src/master

# Rationale

Trying off-the-shelf configurations were a great way to get acquainted with
Emacs and its package ecosystem. I got to learn a lot of terminology, which is
wildly different from the language used by the "more modern" editors and IDEs.

I had a common issue with such configurations, though.

While I could figure out how to customize some common aspects of them, more
often than not, I had no idea where to start. Quite frequently, I didn't even
know what package was providing a certain feature.

Generally, I had to do deconstructive work to achieve the changes I desired. 

I prefer the constructive (additive) approach much more though.

I can experience Emacs in all the intermediary states, as its complexity grows
with every package I load into it.

If anything breaks, the reasons for it are a lot more limited; I have to do a
lot less guess work.

That's why I started my configuration from scratch.

The 1st step was to adjust all those basic settings, which I find familiar and
also common in every other editor/IDE, which was built in recent decades.

This made the whole exercise a lot more bearable. You can find these settings
around the top of the `init.el`.

Next step was to understand and decide about managing Emacs packages. I choose `straight.el`.

# straight.el

I'm using the Nix package manager on macOS for a couple of years now and I quite
sold on its approach. `straight.el` documentation explicitly states that it was
inspired by Nix, so it got me interested. After I've learnt that Doom Emacs is
also using straight under the hood, I was pretty convinced to put my bet on
straight.

# chemacs2

There is a lot to learn from the various, full fledged Emacs "distros", so it's
very desirable to have access to them, while developing your own configuration.

To that end, I use [chemacs2](https://github.com/plexus/chemacs2), to keep multiple
Emacs configurations around.

`chemacs2` configures some aspects of Emacs, like the path to the `custom-file`,
so my `.gitignore` assumes the following settings in
`~/.config/chemacs/profiles.el`:

```lisp
(("onetom"
  . ((server-name . "onetom")
     (user-emacs-directory . "~/src/emacs-cfg")
     (custom-file . "~/src/emacs-cfg/custom.el")
     (straight-p . t)))

 ("onetom-doom"
  . ((server-name . "onetom-doom")
     (user-emacs-directory . "~/src/doom-emacs")))

 ("spacemacs"
  . ((server-name . "spacemacs")
     (user-emacs-directory . "~/src/spacemacs")
     (env . (("SPACEMACSDIR" . "~/src/some-dotfiles/.spacemacs.d"))))))
```

