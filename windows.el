(setq org-directory "~/../../Dropbox/org/")
(setq org-brain-path (concat org-directory "brain/"))

;; fixes a bug in Windows https://github.com/bbatsov/projectile/issues/1302

;; This will fix the project indexing method on this computer.
;; Might want to move this to the windows module later?
(setq projectile-indexing-method 'alien)
