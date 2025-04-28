#!/bin/bash

# A script that greets the user and lists files

echo "What's your name?"
read name

echo "Hello, $name!"
echo "Here are the files in your current directory:"

# Loop over files in the current directory
for file in *; do
  if [ -d "$file" ]; then
    echo "[DIR]  $file"
  elif [ -f "$file" ]; then
    echo "[FILE] $file"
  else
    echo "[OTHER] $file"
  fi
done

# Final message
echo "Done listing files, $name!"
