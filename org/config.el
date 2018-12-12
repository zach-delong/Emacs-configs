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

;; Agenda files
(setq org-agenda-files (list (concat org-directory todo-org)
                             (concat org-directory professional-org)
                             (concat org-directory personal-org)
                             (concat org-directory school-org)
                             (concat org-directory notes-org)
                             (concat org-directory inbox-org)
                             (concat org-directory project-org)))


;; Agenda configuration
(setq org-agenda-span 14)
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

;; Hotkeys for org
(spacemacs/set-leader-keys "oc" 'org-capture)


;; Org pdf process intended to allow adding of citations. More info at link
;; below https://lists.gnu.org/archive/html/emacs-orgmode/2013-05/msg00791.html
;; To add a bibliography, you'll still need to do #+LATEX: \bibliography{file}
;; like in a normal file.  Unfortunately, that can't be avoided apparently
(setq org-latex-pdf-process (quote ("texi2dvi --pdf --clean --verbose
--batch %f" "bibtex %b" "texi2dvi --pdf --clean --verbose --batch %f"
"texi2dvi --pdf --clean --verbose --batch %f")))


;; References and reftex config.  Not really sure what this does anymore
(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all))
  (define-key org-mode-map (kbd "C-c )") 'reftex-citation))
(add-hook 'org-mode-hook 'org-mode-reftex-setup)
