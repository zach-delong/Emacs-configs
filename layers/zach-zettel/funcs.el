(setq zettel-date-command "date +%Y-%m-%d_%k:%m:%S")

(defun zettel-get-file-name ()
  (substring (shell-command-to-string date-command) 0 -1))

(setq zettel-path "~/Dropbox/zettelkasten")

(defun create-buffer-for-file-and-switch (new-file-path)
  (switch-to-buffer
   (create-file-buffer new-file-path))
  (set-visited-file-name new-file-path))

(defun zettel-create-new ()
  (interactive)
  (setq path (concat
              zettel-path
              "/"
              (get-file-name)
              ".md"))
  (create-buffer-for-file-and-switch path))
