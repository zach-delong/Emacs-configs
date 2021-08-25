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

        ("i"
         "interruption"
         entry
         (file+datetree ,(concat org-directory interruption-org))
         "* Interrupted by %?\n%t")

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
:END:")

        ("w" "Templates around office/work stuff")

        ("wo"
         "one on one topics"
         plain ; also unsure what plain actually means
         (file+function ,(concat org-directory one_on_one_topics-org) org-week-datetree)
         "*** %?" ; note the 3 asterisks.  Would be nice to figure out how to do that without but eh.
         )
        ("wQ"
         "Datebase Query"
         entry
         (file ,(concat org-directory inbox-org))
         "* %\\2%?
:PROPERTIES:
:DATABASE: %^{database|STATIC_TABLES|TENANTS}
:TICKET:   %^{ticket}
:TYPE:     %^{type|DATA|POST_MIGRATION}
:END:
#+BEGIN_SRC sql :tangle %\\2-%\\1-%\\3.txt
#+END_SRC
")
        ("wj"
         "Jira ticket"
         entry
         (file ,(concat org-directory inbox-org))
         ,(concat "* TODO %\\1%?
[[" jira-link "%^{ticket}][%\\1]]"))

        ("wm"
         "Meeting notes"
         entry
         (file+datetree ,(concat org-directory meetings-org))
         "* %?\n%U\n")
        ))
