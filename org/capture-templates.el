;; Capture templateg
(setq org-capture-templates
      `(("t"
         "Todo"
         entry
         (file ,(concat org-directory inbox-org))
         "* TODO %?\n  %i\n  %a")

        ("n"
         "Note to self"
         entry
         (file+headline ,(concat org-directory notes-org) "Note to Self")
         "* %?\nEntered on %U\n  %i\n  %a")

        ("d"
         "Review: Daily Review"
         entry
         (file+olp+datetree (concat org-directory reviews-org))
         (file (concat org-directory reviews-org)))

        ("w"
         "Review: Weekly Review"
         entry
         (file+olp+datetree (concat org-directory reviews-org))
         (file (concat org-directory reviews-org)))

        ("m"
         "Review: Monthly Review"
         entry
         (file+olp+datetree (concat org-directory reviews-org))
         (file "~/org/templates/dailyreviewtemplate.org"))))
