;; Use org-datetree functions to build a date tree to a month
;; Inspired by https://emacs.stackexchange.com/questions/48414/monthly-date-tree
(defun org-month-datetree()
  (org-datetree-find-date-create (calendar-current-date))
  ; Kill the line because this date tree will involve a subheading for the week
  (kill-line))

(defun org-week-datetree()
  (org-datetree-find-iso-week-create (calendar-current-date))
  ; Kill the line because this date tree will involve a subheading for the day
  (kill-line))
