;; loop over every file in lib/ and if it's a .el file, load it.
;; This should make this the "master file" for conveniently (nth index list) running all tests
(let ((files
       (directory-files "lib/" t directory-files-no-dot-files-regexp)))
  (dolist (elem files)
    (load elem)))
