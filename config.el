(message "Initializing Deumacs")

(tool-bar-mode -1)
(load-theme 'adwaita t)

(require 'package)

(setq package-archives 
  '(("org"       . "http://orgmode.org/elpa/")
    ("gnu"       . "http://elpa.gnu.org/packages/")
    ("melpa"     . "http://melpa.org/packages/")))

(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-ensure t)

(use-package which-key
  :diminish
  :defer 5
  :config (which-key-mode)
          (which-key-setup-side-window-bottom)
          (setq which-key-idle-delay 0.05))
