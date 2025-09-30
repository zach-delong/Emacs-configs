(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest is-date-should-be-nill-for-non-strings ()
  (should (equal (get-date-location 1) nil))
  (should (equal (get-date-location 'asdf) nil)))

(ert-deftest is-date-should-find-dates ()
  (should (not (equal (get-date-location "[2025-08-25 Mon]") nil)))
  (should (not (equal (get-date-location "2025-08-25 Mon") nil)))
  (should (equal
	   (get-date-location "Daily report: [2025-08-25 Mon]")
	   (list (cons :start 14) (cons :end 30)))))

(ert-deftest is-date-nonstring-date ()
  (should (equal (get-date-location "") nil))
  (should (equal (get-date-location "asdf") nil)))
