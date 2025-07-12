#!/bin/bash

# Function to display script usage
usage() {
  echo "Usage: $0 <search_string>"
  echo "Example: $0 \"error message\""
  exit 1
}

# Check if a parameter is provided
if [ -z "$1" ]; then
  usage
fi

SEARCH_TERM="$1"
CURRENT_DIR="."

echo "Recursively searching for '$SEARCH_TERM' in directory '$CURRENT_DIR' and its subdirectories..."
echo "----------------------------------------------------"

# Use grep command for recursive search
# -r or -R: Recursively search (differs on following symbolic links)
# -i: Ignore case (case-insensitive search)
# -n: Display line numbers
# --color=auto: Highlight matched parts with color
grep -r -i -n --color=auto "$SEARCH_TERM" "$CURRENT_DIR"

echo "----------------------------------------------------"
echo "Search completed."
