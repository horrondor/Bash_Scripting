#!/bin/bash

#Outfile_file
OUTPUT_FILE=~/biggest_files.txt

# Find and List 10 biggest files on the filesystem
echo "Finding 10 biggest files... This might take a few moments."

sudo find / -type f -exec du -h 2>/dev/null {} + | sort -hr | head -n 10 > "$OUTPUT_FILE"

echo "Top 10 biggest files written to: $OUTPUT_FILE"