include ../../defaults.mk

.PHONY: test

test:
	$(info here)
	$(emacs-cmd) --batch -L . -l test/init.el --eval '(ert-run-tests-batch-and-exit "$(MATCH)")'
