(load-file (expand-file-name "plugins/tempo-export/src/lib.el" user-emacs-directory))

(defmacro arrange-test (&rest body)
  "A macro that accepts emacs lisp code, and evaluates it in a temporary buffer, saving excursion before it goes to preserve the location."
  `(progn
     (save-excursion
       (with-temp-buffer
	 ,@body))))

(ert-deftest iterate-over-buffer/empty-string ()
  (arrange-test
   (let ((counter 0))
     (insert "")
     (iterate-over-buffer
      (point-min)
      (point-max)
      (lambda (l)
	(setq counter (+ counter 1))))
     (should (equal counter 0)))))

(ert-deftest iterate-over-buffer/one-line ()
  (arrange-test
   (let ((counter 0))
     (insert "stuff")
     (iterate-over-buffer
      (point-min)
      (point-max)
      (lambda (l)
	(setq counter (+ counter 1))))
     (should (equal counter 1)))))

(ert-deftest iterate-over-buffer/two-lines ()
  (arrange-test
   (let ((counter 0))
     (insert "stuff\n"
	     "things\n")
     (iterate-over-buffer
      (point-min)
      (point-max)
      (lambda (l)
	(setq counter (+ counter 1))))
     (should (equal counter 2)))))

(ert-deftest iterate-over-buffer/three-lines-should-iterate-3-times ()
  (arrange-test
   (let ((counter 0))
     (insert "First line\n"
	     "Second line\n"
	     "Third line\n")
     (iterate-over-buffer
      (point-min)
      (point-max)
      (lambda (l)
	(setq counter (+ counter 1))))
     (should (equal counter 3)))))

(ert-deftest iterate-over-buffer/two-lines/content-should-match ()
  (arrange-test
   (let ((counter 0)
	 (content '()))
     (insert "stuff\n"
	     "things\n")
     (iterate-over-buffer
      (point-min)
      (point-max)
      (lambda (l)
	(setq content (cons l content))))
     (setq content (reverse content))
     (should (equal content '("stuff\n" "things\n"))))))
