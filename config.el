(message "Initializing Deumacs")

(tool-bar-mode -1)
(load-theme 'adwaita t)

(message "Configuring package archives")

(require 'package)

(setq package-archives 
  '(("org"       . "http://orgmode.org/elpa/")
    ("gnu"       . "http://elpa.gnu.org/packages/")
    ("melpa"     . "http://melpa.org/packages/")))

(package-initialize)

;; (package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-ensure t)

(use-package sexy-monochrome-theme
  :config
  (load-theme 'sexy-monochrome t))

(setq make-backup-files nil)

(use-package which-key
  :config (which-key-mode)
          (which-key-setup-side-window-bottom)
          (setq which-key-idle-delay 0.5))

(use-package magit
  :config (global-set-key (kbd "C-x g") 'magit-status))

(use-package org-bullets
  :hook (org-mode . org-bullets-mode))

(use-package f) ; f-delete, f-mkdir, f-move, f-bexists?, f-hidden?

;; (setq org-bullets-bullet-list '("\u200b"))

(require 'org)

(custom-set-faces
 '(org-document-title ((t (:weight thin 2.0))))
 '(org-level-1 ((t (:inherit header-line :height 2.0))))
 '(org-level-2 ((t (:inherit header-line :height 1.8))))
 '(org-level-3 ((t (:inherit header-line :height 1.0))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))

(message "Set the custom face")

(use-package lispy)
