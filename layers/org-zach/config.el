(with-eval-after-load 'org 
  ;; Org files
  (setq todo-org "todo.org")
  (setq professional-org "professional.org")
  (setq personal-org "personal.org")
  (setq school-org "school.org")
  (setq notes-org "notes.org")
  (setq inbox-org "inbox.org")
  (setq project-org "project.org")
  (setq reviews-org "reviews.org")
  (setq meetings-org "meetings.org")
  (setq interruption-org "interruption.org")
  (setq reading-org "reading.org")
  (setq contact-log-org "contact-log.org")
  (setq one_on_one_topics-org "one-on-one-topics.org")

  (setq org-files-list (list todo-org
                             professional-org
                             personal-org
                             school-org
                             notes-org
                             inbox-org
                             project-org
                             meetings-org
                             interruption-org
                             reading-org
                             contact-log-org))

  (setq org-agenda-files (mapcar
                          (lambda (c)
                            (concat org-directory c))
                          org-files-list))
  (setq org-roam-directory (concat org-directory "org-roam"))

  ;; Agenda configuration
  (setq org-agenda-span 14)
  (setq org-refile-targets (quote ((nil :maxlevel . 5)
                                   (org-agenda-files :maxlevel . 5))))

  ;; org-pdf export
                                        ; should support bibtex
                                        ; (setq org-latex-to-pdf-process (list "latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf %f"))
  (setq org-latex-prefer-user-labels t)

  (load-file (concat (configuration-layer/get-layer-path 'org-zach) "/capture-templates.el" )))

;; Sets the org-repeat logbook to store its information in the "LOGBOOK" drawer instead of in a bulleted list on the header. this should keep things cleaner
(setq org-log-into-drawer "LOGBOOK")

(setq org-todo-keywords
      '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELED(c)")))

(setq org-log-repeat nil)
