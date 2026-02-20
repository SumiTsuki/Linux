(use-package vertico
  :custom
  (vertico-cycle t)
  :config
  (vertico-mode 1))

(use-package marginalia
  :config
  (marginalia-mode 1))

(use-package which-key
  :custom
  (which-key-idle-delay 0.3)
  :config
  (which-key-mode 1))

(use-package embark
  :init
  (setq prefix-help-command #'embark-prefix-help-command)
  :bind
  ("C-." . embark-act))

(use-package consult
  :bind
  (("C-s" . consult-line)
   ("C-x b" . consult-buffer))
  :config
  (setq consult-preview-key 'any))

(use-package embark-consult
  :after (embark consult))

(use-package helpful
  :bind
  ([remap describe-function] . #'helpful-function)
  ([remap describe-variable] . #'helpful-variable)
  ([remap describe-key]      . #'helpful-key)
  ([remap describe-command]  . #'helpful-command)
  ([remap describe-symbol]   . #'helpful-symbol))

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0)
  (corfu-auto-prefix 2)
  (corfu-cycle t)
  (corfu-preselect 'prompt)
  :init
  (global-corfu-mode))

(use-package eglot
  :hook
  ((nix-mode . eglot-ensure)
   (c-mode . eglot-ensure)
   (c++-mode . eglot-ensure)
   (python-mode . eglot-ensure))
  :config
  (setq completion-category-overrides '((eglot (styles orderless))))
  (add-to-list 'eglot-ignored-server-capabilities :documentOnTypeFormattingProvider)
  (setq eglot-format-on-save nil))

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-keyword)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev))

(use-package kind-icon
  :after
  corfu
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

(provide 'init-function)
