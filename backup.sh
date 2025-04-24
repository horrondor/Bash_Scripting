#!/bin/bash

# Simple backup script

# Set source and destination directories
SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
DEST="$BACKUP_DIR/backup_$TIMESTAMP"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Copy source to destination
cp -r "$SOURCE_DIR" "$DEST"

# Confirm success
echo "Backup of $SOURCE_DIR completed at $DEST"
