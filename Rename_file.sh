#!/bin/bash

#!/bin/bash
# Rename .txt to .bak in current directory

for file in *.txt; do
    mv "$file" "${file%.txt}.bak"
    echo "Renamed $file to ${file%.txt}.bak"
done
