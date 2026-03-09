(use-package magit
  :bind (("C-x g" . magit-status)))

(use-package pdf-tools
  :config
  (pdf-loader-install)
  (add-hook 'pdf-view-mode-hook (display-line-numbers-mode -1))
  (add-hook 'pdf-view-mode-hook #'pdf-view-roll-minor-mode)
  (setq-default pdf-view-display-size 'fit-width)
  (setq pdf-view-use-scaling t))

(provide 'init-tools)
