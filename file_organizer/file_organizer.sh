#!/bin/bash

# Check if the directory path argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory="$1"

# Check if the specified directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist"
    exit 1
fi

# Create subdirectories if they don't exist
mkdir -p "$directory/txt"
mkdir -p "$directory/jpg"
mkdir -p "$directory/pdf"
mkdir -p "$directory/misc"

# Iterate over files in the directory
for file in "$directory"/*; do
    # Skip if the file is a directory or hidden file
    if [ -d "$file" ] || [[ "$(basename "$file")" == .* ]]; then
        continue
    fi

    # Get the file extension
    extension="${file##*.}"

    # Determine the destination subdirectory
    case "$extension" in
        txt)
            destination="$directory/txt"
            ;;
        jpg)
            destination="$directory/jpg"
            ;;
        pdf)
            destination="$directory/pdf"
            ;;
        *)
            destination="$directory/misc"
            ;;
    esac

    # Move the file to the destination subdirectory
    mv "$file" "$destination"
done

echo "File organization completed successfully."