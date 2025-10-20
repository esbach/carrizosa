#!/bin/bash

# Helper script to generate masonry grid markup from images in a folder
# Usage: ./generate-image-markup.sh images/interior

if [ -z "$1" ]; then
  echo "Usage: ./generate-image-markup.sh <folder-path>"
  echo "Example: ./generate-image-markup.sh images/interior"
  exit 1
fi

FOLDER="$1"

if [ ! -d "$FOLDER" ]; then
  echo "Error: Folder '$FOLDER' does not exist"
  exit 1
fi

echo "::: {.masonry-grid}"

# Find all image files and generate markup
find "$FOLDER" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" -o -iname "*.gif" \) | sort | while read -r img; do
  # Get relative path from current directory
  rel_path=$(echo "$img" | sed 's|^./||')
  echo "::: {.masonry-item}"
  echo "![]($rel_path)"
  echo ":::"
  echo ""
done

echo ":::"

