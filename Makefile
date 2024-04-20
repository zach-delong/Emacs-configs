# Define variables
ORG_FILE = config.org
OUTPUT_FILE = config.el
ORG_FILE_2 = early-config.org
OUTPUT_FILE_2 = early-config.el

# Default target
all: $(OUTPUT_FILE) $(OUTPUT_FILE_2)

# Rule to tangle config.org
$(OUTPUT_FILE):$(ORG_FILE)
	echo "Tangling $<"
	emacs --batch -L . -l org --eval "(org-babel-tangle-file \"$<\")"

$(OUTPUT_FILE_2):$(ORG_FILE_2)
	echo "Tangling $<"
	emacs --batch  -L . -l org --eval "(org-babel-tangle-file \"$<\")"

# Clean rule to remove generated files
clean:
	rm $(OUTPUT_FILE_2) $(OUTPUT_FILE)
