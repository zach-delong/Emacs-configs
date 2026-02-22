# Define variables
CONFIG_FILE = config.org
OUTPUT_CONFIG_FILE = config.el
EARLY_CONFIG_FILE = early-config.org
OUTPUT_EARLY_CONFIG_FILE = early-config.el
TEST_FILE = tests.el
TEMPO_TEST_FILE = plugins/tempo-export/test/init.el
MATCH ?=

help:
	$(info valid make commands:)
	$(info - all -- tangle both $(CONFIG_FILE) and $(OUTPUT_EARLY_CONFIG_FILE))
	$(info - test -- run tests within $(TEST_FILE))
	$(info - clean -- remove all cached .el files)
	$(info - hard-clean -- use Git to clean *everything*)
	$(info - test-tempo -- run tempo-specific tests in isolation)

# Default target
all: $(OUTPUT_CONFIG_FILE) $(OUTPUT_EARLY_CONFIG_FILE)

test: all
	flatpak run org.gnu.emacs --batch -L . -l $(TEST_FILE) --eval '(ert-run-tests-batch-and-exit "$(MATCH)")'

# Rule to tangle config.org
$(OUTPUT_CONFIG_FILE):$(CONFIG_FILE)
	echo "Tangling $<"
	flatpak run org.gnu.emacs --batch -L . -l org --eval "(org-babel-tangle-file \"$<\")"

$(OUTPUT_EARLY_CONFIG_FILE):$(EARLY_CONFIG_FILE)
	echo "Tangling $<"
	flatpak run org.gnu.emacs --batch  -L . -l org --eval "(org-babel-tangle-file \"$<\")"

# Clean rule to remove generated files
clean:
	rm $(OUTPUT_EARLY_CONFIG_FILE) $(OUTPUT_CONFIG_FILE) $(TEST_FILE)

hard-clean:
	git clean -dfx -e local.org

test-tempo:
	flatpak run org.gnu.emacs --batch -L . -l $(TEMPO_TEST_FILE) --eval '(ert-run-tests-batch-and-exit "$(MATCH)")'
