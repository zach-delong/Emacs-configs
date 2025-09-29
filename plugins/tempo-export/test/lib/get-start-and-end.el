(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(ert-deftest a-lt-b ()
  (should (= (alist-get :start (get-start-and-end 1 2)) 1))
  (should (= (alist-get :end (get-start-and-end 1 2)) 2))
  (should (= (alist-get :start (get-start-and-end 4 25)) 4))
  (should (= (alist-get :end (get-start-and-end 4 25)) 25))
  (should (= (alist-get :start (get-start-and-end 100 1234)) 100))
  (should (= (alist-get :end (get-start-and-end 100 1234)) 1234)))

(ert-deftest a-gt-b ()
  (should (= (alist-get :start (get-start-and-end 2 1)) 1))
  (should (= (alist-get :end (get-start-and-end 2 1))))
  (should (= (alist-get :start (get-start-and-end 4 25)) 4))
  (should (= (alist-get :end (get-start-and-end 4 25)) 25)))

(provide 'parse-date-table-tests)
