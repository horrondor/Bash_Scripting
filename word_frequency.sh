#!/bin/bash
<< comment
    Write a bash script to calculate the frequency of each word in a text file words.txt.

    For simplicity sake, you may assume:

    words.txt contains only lowercase characters and space ' ' characters.
    Each word must consist of lowercase characters only.
    Words are separated by one or more whitespace characters.
    Example:

    Assume that words.txt has the following content:

    the day is sunny the the
    the sunny is is
    Your script should output the following, sorted by descending frequency:

    the 4
    is 3
    sunny 2
    day 1
comment
#!/bin/bash

# Check if the file exists
if [[ ! -f words.txt ]]; then
  echo "words.txt not found!"
  exit 1
fi

# Process the file
tr -s ' ' '\n' < words.txt |       # Convert spaces to newlines (handle multiple spaces)
grep -v '^$' |                     # Remove empty lines
sort |                             # Sort the words alphabetically
uniq -c |                          # Count unique occurrences
sort -k1,1nr -k2 |                 # Sort by frequency (numerical, descending), then word
awk '{print $2, $1}'               # Rearrange output: word frequency

