(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest is-throwaway-row/should-throwaway-table-metadata ()
  (should (equal (is-throwaway-row "#+BEGIN") t))
  (should (not (equal (is-throwaway-row "#+ BEGIN") t)))
  (should (not (equal (is-throwaway-row "| stuff | things |") t))))

(ert-deftest is-throwaway-row/should-throw-away-table-headers ()
  (should (equal (is-throwaway-row "| File ") t)))

(ert-deftest is-throwaway-row/should-throw-away-row-separators ()
  (should (equal (is-throwaway-row "|-") t)))


