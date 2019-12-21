;; Capture templates
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

        ("u"
         "Unread article"
         entry
         (file ,(concat org-directory reading-org))
         "* UNREAD %^{title}%?
:PROPERTIES:
:AUTHOR_NAME: %^{author_name}
:END:

[[%^{URL}][%\\1]]

\tEntered on %U\n  %i")


        ("g"
         "Git best-practice"
         entry
         (file+headline ,(concat org-directory notes-org) "Git best practice")
         "* %^{ITEM}%?\nNoted by %^{BY} \nEntered on %U\n  %i\n  %a")

        ("s"
         "Standup"
         entry
         (file+datetree ,(concat org-directory standup-org))
         "* %?\n%U\n")

        ("i"
         "interruption"
         entry
         (file+datetree ,(concat org-directory interruption-org))
         "* Interrupted by %?\n%U\n")

        ("j"
         "Jira ticket"
         entry
         (file ,(concat org-directory inbox-org))
         ,(concat "* TODO %\\1%?
[[" jira-link "%^{ticket}][%\\1]]"))

        ("d"
         "documenation spotlight"
         entry
         (file+headline,(concat org-directory notes-org) "Documentation spotlight")
         "* %?\nEntered on %U\n  %i\n  %a")

        ("Q"
         "Datebase Query"
         entry
         (file ,(concat org-directory inbox-org))
         "* %\\2%?
:PROPERTIES:
:DATABASE: %^{database}
:TICKET:   %^{ticket}
:END:
#+BEGIN_SRC sql :tangle %\\2-%\\1.txt
#+END_SRC
")

        ("c"
        "contact"
        entry
        (file+datetree ,(concat org-directory contact-log-org))
        "* Contacted by: %\\1%?
:PROPERTIES:
:NAME:       %^{Name}
:COMPANY:    %^{Company}
:HEADHUNTER: %^{Headhunter|Y|N}
:SOURCE:     %^{Source|LinedIn|Phone|Email}
:END:")))


