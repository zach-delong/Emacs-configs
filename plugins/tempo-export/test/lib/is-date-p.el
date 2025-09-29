(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest is-date-should-be-nill-for-non-strings ()
  (should (equal (is-date-p 1) nil))
  (should (equal (is-date-p 'asdf) nil)))

(ert-deftest is-date-should-find-dates ()
  (should (not (equal (is-date-p "[2025-08-25 Mon]") nil)))
  (should (not (equal (is-date-p "2025-08-25 Mon") nil)))
  (should (equal (is-date-p "Daily report: [2025-08-25 Mon]") 14)))

(ert-deftest is-date-nonstring-date ()
  (should (equal (is-date-p "") nil))
  (should (equal (is-date-p "asdf") nil)))
