#!/bin/bash

# Check if the folder path is provided as a command-line argument
if [ -z "$1" ]; then
  echo "Usage: $0 <folder_path>"
  exit 1
fi

folder_path="$1"

# Check if the specified folder exists
if [ ! -d "$folder_path" ]; then
  echo "Error: Folder not found."
  exit 1
fi

# Change to the specified folder
cd "$folder_path" || exit

for file in *.txt
do
  # Extract the language name from the filename
  language=$(echo $file | cut -d '-' -f 1)

  # Create the directory if it doesn't exist
  if [ ! -d "$language" ]; then
    mkdir "$language"
  fi

  # Move the file to its corresponding language directory
  mv "$file" "$language/"
done
