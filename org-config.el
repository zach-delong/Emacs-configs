(setq org-capture-templates
      `(("t"
         "Todo"
         entry
         (file ,(concat org-directory "inbox.org"))
         "* TODO %?\n  %i\n  %a")

        ("s"
         "Add to Shopping list"
         entry
         (file ,(concat org-directory "store_list.org"))
         "* %?\nEntered on %U\n  %i\n  %a")

        ("n"
         "Note to self"
         entry
         (file+headline ,(concat org-directory "notes.org") "Note to Self")
         "* %?\nEntered on %U\n  %i\n  %a")))


(setq org-agenda-files (list (concat org-directory "todo.org")
                             (concat org-directory "professional.org")
                             (concat org-directory "personal.org")
                             (concat org-directory "school.org")
                             (concat org-directory "notes.org")
                             (concat org-directory "inbox.org")))


(setq org-agenda-span 14)
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

(spacemacs/set-leader-keys "oc" 'org-capture)
