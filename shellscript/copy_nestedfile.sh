#!/bin/bash

# Define the source and target directories
SOURCE_DIR="/home/ubuntu/shell_script/dir"
TARGET_DIR="/home/ubuntu/shell_script/backupfolder"



# Use `find` to locate all files in the source directory
find "$SOURCE_DIR" -type f | while read -r file; do
  # Extract the relative path of the file
#  RELATIVE_PATH="${file#$SOURCE_DIR/}"

  # Determine the target path for the file
 # TARGET_PATH="$TARGET_DIR/$RELATIVE_PATH"

  # Create the target directory structure if it doesn't exist
  #mkdir -p "$(dirname "$TARGET_PATH")"

  # Copy the file to the target directory
  cp "$file" "$TARGET_PATH"

  # Log the copied file
  echo "Copied: $file -> $TARGET_PATH"
done

