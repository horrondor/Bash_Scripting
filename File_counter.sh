#!/bin/bash

#File counter

DIR="$HOME/Documents"
Count=$(find "$DIR" -type f | wc -l)

echo "There are $Count files in $DIR"