#!/bin/bash

# Directory where the source files are located
source_dir="./home"

# Directory where symlinks will be created (set to the home directory)
target_dir="$HOME"

# Check if the source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Source directory does not exist: $source_dir"
  exit 1
fi

# Check if the target directory exists, if not create it
if [ ! -d "$target_dir" ]; then
  mkdir -p "$target_dir"
fi

# Loop through all items including hidden ones in the source directory
# Using shopt to change the dotglob option
shopt -s dotglob
for item in "$source_dir"/*; do
  # Extract item name only from path
  itemname=$(basename "$item")
  # Create a symlink in the target directory pointing to the original item
  ln -sf "$(realpath -- "$item")" "$target_dir/"
  echo "Created symlink for $itemname in $target_dir"
done
shopt -u dotglob  # Reset dotglob to its default behavior

echo "All symlinks have been created."
