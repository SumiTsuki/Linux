(use-package doom-themes
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t)
  :config
  (load-theme 'doom-tokyo-night t)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 'official)
  (setq dashboard-items '((recents . 5)
						  (projects . 5)
						  (bookmarks . 5)))
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t))

(use-package dirvish
  :init
  (dirvish-override-dired-mode)
  :config
  (setq dirvish-attributes '(nerd-icons file-size))
  (dirvish-peek-mode 1)
  :bind
  ("C-c f" . dirvish-side))

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom
  (doom-modeline-height 25)
  (doom-modeline-width 4)
  (doom-modeline-icon t))

(use-package nerd-icons)

(provide 'init-ui)
