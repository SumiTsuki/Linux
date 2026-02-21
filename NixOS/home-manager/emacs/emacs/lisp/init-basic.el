(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(unless (file-exists-p custom-file)
  (with-temp-buffer (write-file custom-file)))
(load custom-file 'noerror)

;; --- UI ---
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(fset 'yes-or-no-p 'y-or-n-p)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(setq-default buffer-file-coding-system 'utf-8-unix)
(set-face-attribute 'default nil
					:font "Maple Mono NF CN"
					:height 120
					:weight 'regular)

;; --- Tools ---
(setq search-highlight t)
(setq query-replace-highlight t)
(setq isearch-lazy-highlight t)
(setq-default case-fold-search t)

;; --- Function ---
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; --- Input ---
(show-paren-mode 1)
(electric-pair-mode 1)
(electric-indent-mode 1)
;;(global-set-key (kbd "TAB")#'self-insert-command)
(setq-default tab-always-indent t)
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(setq-default standard-indent 4)
(setq-default c-basic-offset 4)

(provide 'init-basic)
