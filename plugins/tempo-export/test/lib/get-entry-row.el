(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest get-entry-row/simple-row-should-flag ()
  (should (equal
	   (get-entry-row "| stuff | things |")
	   '("stuff" "things"))))

(ert-deftest get-entry-row/long-row-should-flag ()
  (should (equal
	   (get-entry-row "|                  | \_          more stuff |        |      |      |      |      | 0:03 |")
	   '("\_          more stuff" "0:03"))))

(ert-deftest get-entry-row/non-entry-row-should-nil ()
  (should (equal
	   (get-entry-row "|                  | \_          more stuff |        |      |      |      | 0:03 |      |")
	   nil)))
