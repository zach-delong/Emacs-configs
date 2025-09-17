(defun get-start-and-end (a b)
  "Given two numbers, returns an alist (something of the form ((attribute . value) (attribute . value) ...) of the form ((:start . [number]) (:end . [number]))"
  (let* ((a-is-first (< a b))
         (start (if a-is-first a b))
         (end (if a-is-first b a)))
    (list (cons :start start) (cons :end end))))

(defun is-date-p (date)
  "Is the provided item a date?"
  (if (or
       (not (stringp date))
       (equal date ""))
      nil
    (string-match "[\[]?[0-9]+-[0-9]+-[0-9]+ [A-Za-z]+[\]]?" date)))

(provide 'parse-date-table)

