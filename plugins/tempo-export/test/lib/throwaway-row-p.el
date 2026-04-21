(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest throwaway-row-p/should-throwaway-table-metadata ()
  (should (equal (throwaway-row-p "#+BEGIN") t))
  (should (not (equal (throwaway-row-p "#+ BEGIN") t)))
  (should (not (equal (throwaway-row-p "| stuff | things |") t))))

(ert-deftest throwaway-row-p/should-throw-away-table-headers ()
  (should (equal (throwaway-row-p "| File ") t)))

(ert-deftest throwaway-row-p/should-throw-away-row-separators ()
  (should (equal (throwaway-row-p "|-") t)))

(ert-deftest throwaway-row-p/should-throw-away-empty-lines ()
  (should (equal (throwaway-row-p "\n") t))
  (should (not (equal (throwaway-row-p "| stuff | things |\n") t))))
