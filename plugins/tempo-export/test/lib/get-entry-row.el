(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest testing ()
  (should (equal (get-entry-row "| stuff | things |") '("stuff" "things"))))
