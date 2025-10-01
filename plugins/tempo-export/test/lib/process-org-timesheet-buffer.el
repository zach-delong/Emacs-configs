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
