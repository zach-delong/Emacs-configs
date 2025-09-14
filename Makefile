# Define variables
CONFIG_FILE = config.org
OUTPUT_CONFIG_FILE = config.el
EARLY_CONFIG_FILE = early-config.org
OUTPUT_EARLY_CONFIG_FILE = early-config.el
TEST_FILE = tests.el
TEMPO_TEST_FILE = plugins/tempo-export/test/lib/parse-date.el
MATCH ?=

# Default target
all: $(OUTPUT_CONFIG_FILE) $(OUTPUT_EARLY_CONFIG_FILE)

test: all
	emacs --batch -L . -l $(TEST_FILE) --eval '(ert-run-tests-batch-and-exit "$(MATCH)")'

# Rule to tangle config.org
$(OUTPUT_CONFIG_FILE):$(CONFIG_FILE)
	echo "Tangling $<"
	emacs --batch -L . -l org --eval "(org-babel-tangle-file \"$<\")"

$(OUTPUT_EARLY_CONFIG_FILE):$(EARLY_CONFIG_FILE)
	echo "Tangling $<"
	emacs --batch  -L . -l org --eval "(org-babel-tangle-file \"$<\")"

# Clean rule to remove generated files
clean:
	rm $(OUTPUT_EARLY_CONFIG_FILE) $(OUTPUT_CONFIG_FILE) $(TEST_FILE)

hard-clean:
	git clean -dfx -e local.org

test-tempo:
	emacs --batch -L . -l $(TEMPO_TEST_FILE) --eval '(ert-run-tests-batch-and-exit "$(MATCH)")'
