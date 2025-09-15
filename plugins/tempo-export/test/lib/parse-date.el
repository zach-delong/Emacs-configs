(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest a-lt-b ()
  (should (= (alist-get :start (get-start-and-end 1 2)) 1))
  (should (= (alist-get :end (get-start-and-end 1 2)) 2)))

(provide 'parse-date-table-tests)
