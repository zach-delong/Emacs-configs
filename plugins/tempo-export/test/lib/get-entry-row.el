(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest testing ()
  (should (equal (get-entry-row "| stuff | things |") '("stuff" "things"))))

(ert-deftest testing2 ()
  (should (equal (get-entry-row "|                  | \_          more stuff |        |      |      |      |      | 0:03 |")
				'("\_          more stuff" "0:03"))))

(ert-deftest testing3 ()
  (should (equal (get-entry-row "|                  | \_          more stuff |        |      |      |      | 0:03 |      |")
				nil)))
