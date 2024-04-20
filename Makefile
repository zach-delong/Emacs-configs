# Define variables
ORG_FILE = config.org
OUTPUT_FILE = config.el
OUTPUT_FILE_2 = early-config.el
ORG_FILE_2 = early-config.org

# Default target
all: $(OUTPUT_FILE) $(OUTPUT_FILE_2)

# Rule to tangle config.org
$(OUTPUT_FILE):$(ORG_FILE)
	echo "Tangling $<"
	emacs --batch -l org $< -f org-babel-tangle

$(OUTPUT_FILE_2):$(ORG_FILE_2)
	echo "Tangling $<"
	emacs --batch -l org $< -f org-babel-tangle

# Clean rule to remove generated files
clean:
	rm $(OUTPUT_FILE_2) $(OUTPUT_FILE)
