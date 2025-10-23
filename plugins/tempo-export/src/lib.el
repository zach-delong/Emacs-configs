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
	 ((get-date-location line) (setq timesheet (cons (get-date-location line) timesheet)))
	 (t nil)))
      (reverse timesheet))))

(defun get-entry-row (line)
  (let ((split-row (string-split line "[|]")))
    ; Need to strip empty rows and trim whitespace around entries
    (message "car: %S" split-row)))

(provide 'parse-date-table)

