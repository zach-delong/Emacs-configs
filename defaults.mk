emacs-cmd ?= flatpak run org.gnu.emacs

# Define variables
CONFIG_FILE = config.org
OUTPUT_CONFIG_FILE = config.el
EARLY_CONFIG_FILE = early-config.org
OUTPUT_EARLY_CONFIG_FILE = early-config.el
TEST_FILE = tests.el
TEMPO_TEST_FILE = plugins/tempo-export/test/init.el
MATCH ?=
