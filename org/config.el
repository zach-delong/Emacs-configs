;; Org files
(setq todo-org "todo.org")
(setq professional-org "professional.org")
(setq personal-org "personal.org")
(setq school-org "school.org")
(setq notes-org "notes.org")
(setq inbox-org "inbox.org")
(setq project-org "project.org")
(setq reviews-org "reviews.org")
(setq standup-org "standup.org")
(setq interruption-org "interruption.org")
(setq reading-org "reading.org")

(setq org-files-list (list todo-org
            professional-org
            personal-org
            school-org
            notes-org
            inbox-org
            project-org
            standup-org
            interruption-org
            reading-org))

(setq org-agenda-files (mapcar
                        (lambda (c)
                          (concat org-directory c))
                        org-files-list))

;; Agenda configuration
(setq org-agenda-span 14)
(setq org-refile-targets (quote ((nil :maxlevel . 5)
                                 (org-agenda-files :maxlevel . 5))))

;; Hotkeys for org
(spacemacs/set-leader-keys "oc" 'org-capture)
(spacemacs/set-leader-keys "mt" 'org-babel-tangle)


;; References and reftex config.  Not really sure what this does anymore
(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all))
  (define-key org-mode-map (kbd "C-c )") 'reftex-citation))
(add-hook 'org-mode-hook 'org-mode-reftex-setup)

(spacemacs/set-leader-keys "mr" 'org-priority)
