;; Used to get string-trim-right
(require 'subr-x)

(defun add-local-node-modules/trim-output-right (input)
  (string-trim-right input))

(defun add-local-node-modules/exec (command)
  (string-trim-right (shell-command-to-string command)))

(defvar add-local-node-modules/command-to-execute "npm root" "the command to be run to get your npm root path")

(defun add-local-node-modules/add-bin-to-path (input)
  "Given a path, append '/.bin/' to it to point to the bin directory
of node-modules"
  (concat input "/.bin/"))

(defun add-local-node-modules/get-path-to-bin (input)
  (let
      ((path-to-root (add-local-node-modules/exec input)))
    (add-local-node-modules/add-bin-to-path path-to-root)))

(defun add-local-node-modules ()
  "Attempts to load a node-modules folder into the local path, if it
can be found. Requires that you have NPM installed and available
on your path."
  (interactive)
  (let
      ((path-to-bin (add-local-node-modules/get-path-to-bin add-local-node-modules/command-to-execute)))
    (message path-to-bin)))

(provide 'add-local-node-modules)
