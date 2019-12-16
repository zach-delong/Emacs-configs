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

;; org-pdf export
; should support bibtex
; (setq org-latex-to-pdf-process (list "latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf %f"))
(setq org-latex-prefer-user-labels t)

;; Hotkeys for org
(spacemacs/set-leader-keys "oc" 'org-capture)
(spacemacs/set-leader-keys "ot" 'org-babel-tangle)
(spacemacs/set-leader-keys "or" 'org-priority)
