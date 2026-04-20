(defun get-start-and-end (a b)
  "Given two numbers, returns an alist (something of the form ((attribute . value) (attribute . value) ...) of the form ((:start . [number]) (:end . [number]))"
  (let* ((a-is-first (< a b))
         (start (if a-is-first a b))
         (end (if a-is-first b a)))
    (list (cons :start start) (cons :end end))))

(defun get-date-location (date)
  "Is the provided item a date?"
  (if (or
       (not (stringp date))
       (equal date ""))
      nil
    (let
	((start (string-match "[\[]?\\([0-9]+-[0-9]+-[0-9]+\\) [A-Za-z]+[\]]?" date))
	 (end (match-end 0)))
      (if (and
	   (not (equal start nil))
	   (not (equal end nil)))
	  (match-string 1 date)
	nil))))

(defun tempo-build-table-list ()
  "Loop over the body of a buffer, line by line"
  (interactive)
  (save-excursion
    (let ((range (get-start-and-end (point) (mark)))
	  (timesheet '())
	  (line nil))
      (goto-char (alist-get :start range))
      (while (< (point) (alist-get :end range))
	(setq line
	      (buffer-substring
	       (point)
	       (progn
		 (forward-line 1)
		 (point))))
	(cond
	 ((throwaway-row-p line) nil)
	 ((get-entry-row line)
	  (setq timesheet (cons (get-entry-row line) timesheet)))
	 (t nil)))
      (reverse timesheet))))

(defun iterate-over-buffer (start end fn)
  "Given the start and end points, perform commands on each line in the current buffer between start and end"
  (save-excursion
    (goto-char start)
    (while (< (point) end)
      (funcall fn (buffer-substring
		   (point)
		   (progn
		     (forward-line 1)
		     (point)))))))


(defun throwaway-row-p (row)
    "Given a row's contents, returns true if the row is something we should ignore in the main loop of the program"
    (cond
     ((string-prefix-p "#+BEGIN" row) t)
     ((string-prefix-p "| File " row) t)
     ((string-prefix-p "|-" row) t)))
(defun get-entry-row (line)
  "If the provided line contains a log, return a list containing the
columns. Otherwise, return nil."
  (let
      ((line-list (string-split line "|" nil "\s*")))
    (if (not (string-blank-p (car (last line-list 2))))
	(string-split line "|" t "\s*")
      nil)))

(provide 'parse-date-table)

