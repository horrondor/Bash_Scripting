#!/bin/bash

# Check for directories
dirs=(*/)
if [ ${#dirs[@]} -eq 0 ]; then
  echo "No folders found in current directory."
  exit 1
fi

# List size of each folder
for dir in "${dirs[@]}"; do
  du -sh "$dir"
done

