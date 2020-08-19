;; The org-directory on windows.
;; This will be used to identify where org files are in my personal org layer
(setq org-directory "~/../../Dropbox/org/")

;; The org-brain directory on windows.
;; This will be used relative to the org-directory
(setq org-brain-path (concat org-directory "brain/"))

;; fixes a bug in Windows https://github.com/bbatsov/projectile/issues/1302
;; This will fix the project indexing method on this computer.
(setq projectile-indexing-method 'alien)
