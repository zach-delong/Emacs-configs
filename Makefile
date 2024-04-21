# Define variables
CONFIG_FILE = config.org
OUTPUT_CONFIG_FILE = config.el
EARLY_CONFIG_FILE = early-config.org
OUTPUT_EARLY_CONFIG_FILE = early-config.el

# Default target
all: $(OUTPUT_CONFIG_FILE) $(OUTPUT_EARLY_CONFIG_FILE)

# Rule to tangle config.org
$(OUTPUT_CONFIG_FILE):$(CONFIG_FILE)
	echo "Tangling $<"
	emacs --batch -L . -l org --eval "(org-babel-tangle-file \"$<\")"

$(OUTPUT_EARLY_CONFIG_FILE):$(EARLY_CONFIG_FILE)
	echo "Tangling $<"
	emacs --batch  -L . -l org --eval "(org-babel-tangle-file \"$<\")"

# Clean rule to remove generated files
clean:
	rm $(OUTPUT_EARLY_CONFIG_FILE) $(OUTPUT_CONFIG_FILE)
