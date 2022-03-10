;; Override this to get a different date file format
(setq zettel-date-command "date +%Y-%m-%d_%k-%m-%S")

;; Override this to get a totally different file name if you'd like. Ex, make it
;; interactive and provide a string
(defun zettel-get-file-name ()
  (substring
   (shell-command-to-string zettel-date-command)
   0 ; Start from the beginning of the screen
   -1)) ; Go to the character before the end of the string. This discards a final newline

;; The path to your zettelkasten
(setq zettel-path "~/Dropbox/zettelkasten")

;; Creates a new buffer for a particular file, set up the backing file for that
;; buffer to your provided path.
(defun create-buffer-for-file-and-switch (new-file-path)
  (switch-to-buffer
   (create-file-buffer new-file-path))
  (set-visited-file-name new-file-path))

;; Create a new note in your zettelkasten using your name format
(defun zettel-create-new ()
  (interactive) 
  (setq path (concat
              zettel-path
              "/"
              (zettel-get-file-name)
              ".md"))
  (create-buffer-for-file-and-switch path))
