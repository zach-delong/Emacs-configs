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

        ("s"
         "Standup"
         entry
         (file+datetree ,(concat org-directory standup-org))
         "* %?\n%U\n")

        ("j"
         "Jira ticket"
         entry
         (file+headline ,(concat org-directory inbox-org) "Tasks")
         "* TODO %? %\\1
[[http://www.jira.com/browse/%^{ticket}][%\\1]]")))
