
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)

                                        ;(color-theme-initialize)
(load-theme 'sanityinc-solarized-dark t)

(setq evil-want-C-u-scroll t)

(require 'evil)
(evil-mode t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'helm-config)

                                        ; (linum-mode)
                                        ; (linum-relative-global-mode)
                                        ; (setq linum-relative-current-symbol "")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(org-agenda-files
   (quote
    ("/Users/zachery/Dropbox/org/classes.org" "/Users/zachery/Dropbox/org/inbox.org" "/Users/zachery/Dropbox/org/notes.org" "/Users/zachery/Dropbox/org/todo.org")))
 '(package-selected-packages
   (quote
    (yasnippet-snippets yasnippet typescript-mode use-package helm evil color-theme-sanityinc-solarized))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(setq-default indent-tabs-mode nil)

(require 'org)
;; mobileorg settings
;; mobileorg settings
(setq org-directory "~/Dropbox/org")
(setq org-mobile-inbox-for-pull "~/Dropbox/org/inbox.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq org-mobile-files '("~/Dropbox/org"))

(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

(require 'yasnippet)
(yas-global-mode 1)
