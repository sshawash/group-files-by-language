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

find files/ -maxdepth 1 -type f -name "*.txt" -print0 | xargs -0 -I {} bash -c '
  language=$(echo {} | cut -d "-" -f 1)
  if [ ! -d "$language" ]; then
    mkdir "$language"
  fi
  rsync -a "{}" "$language/"
  rm "{}"
'
