;;; This will be the initialization code for emacs

;; Use the native compiler if available

(if (and (fboundp 'native-comp-available-p)
	 (native-comp-available-p))
    (progn
      (message "Native compilation is available")
      (setq comp-deffered-compilation t))
  (message "Native compilation is not available"))

(setq config-file (concat user-emacs-directory "config.org"))

(require 'org-compat)

(org-babel-load-file config-file)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit which-key use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
