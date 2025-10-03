(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest process-org-timesheet-buffer-should-work ()
  (save-excursion
    (with-temp-buffer
      (insert "#+BEGIN: clocktable :block thisweek :scope agenda :maxlevel 10 :step day\n" "\n" "Daily report: [2025-08-25 Mon]\n" "| File | Headline         | Time   ")
      (set-mark (point-min))
      (goto-char (point-max))
      (should (equal "2025-08-25" (car (tempo-build-table-list)))))))

(ert-deftest process-org-timesheet-buffer-multiple-tables ()
  "Notice that the list is in the reverse order"
  (save-excursion
    (with-temp-buffer
      (insert "#+BEGIN: clocktable :block thisweek :scope agenda :maxlevel 10 :step day\n"
	      "\n"
	      "Daily report: [2025-08-25 Mon]\n" "| File | Headline         | Time   "
	      "#+BEGIN: clocktable :block thisweek :scope agenda :maxlevel 10 :step day\n"
	      "\n"
	      "Daily report: [2025-08-26 Tue]\n" "| File | Headline         | Time   ")
      (set-mark (point-min))
      (goto-char (point-max))
      (should
       (equal
	"2025-08-25"
	(car (tempo-build-table-list))))
      (should
       (equal "2025-08-26"
	      (nth 1 (tempo-build-table-list)))))))

(ert-deftest process-complex-org-timesheet-buffer ()
  "here's a nasty example"
  (save-excursion
    (with-temp-buffer
      (insert
       "Daily report: [2024-04-15 Mon]\n"
       "| File             | Headline                    | Time   |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "|                  | ALL *Total time*            | *0:50* |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| contact-log.org  | *File time*                 | *0:00* |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| interruption.org | *File time*                 | *0:00* |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| meetings.org     | *File time*                 | *0:00* |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| project.org      | *File time*                 | *0:00* |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| inbox.org        | *File time*                 | *0:00* |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| notes.org        | *File time*                 | *0:00* |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| school.org       | *File time*                 | *0:00* |      |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| personal.org     | *File time*                 | *0:38* |      |      |      |\n"
       "|                  | Chores                      | 0:38   |      |      |      |\n"
       "|                  | \_  Balance checkbook       |        | 0:38 |      |      |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| professional.org | *File time*                 | *0:12* |      |      |      |\n"
       "|                  | Blog                        | 0:12   |      |      |      |\n"
       "|                  | \_  [50%] Emacs Lisp series |        | 0:12 |      |      |\n"
       "|                  | \_    Intro to Elisp        |        |      | 0:12 |      |\n"
       "|                  | \_      Outline             |        |      |      | 0:12 |\n"
       "|------------------+-----------------------------+--------+------+------+------|\n"
       "| todo.org         | *File time*                 | *0:00* |      |      |      |\n")
      (set-mark (point-min))
      (goto-char (point-max))
      (should (equal 1
		     (length (tempo-build-table-list)))))))
