#!/bin/bash
# Script to monitor free disk space and send an email alert if low

# Config
THRESHOLD=90                     # Minimum acceptable free space (%)
MOUNT_POINT="/"                 # Filesystem to monitor
TO_EMAIL="horrondor170@gmail.com"       # Set your email address

# Check disk usage
USED_PERCENT=$(df -h "$MOUNT_POINT" | awk 'NR==2 {print $5}' | tr -d '%')
FREE_PERCENT=$((100 - USED_PERCENT))

if [ "$FREE_PERCENT" -lt "$THRESHOLD" ]; then
    SUBJECT="🚨 Disk Space Alert on $(hostname)"
    MESSAGE="Warning! Only $FREE_PERCENT% disk space is free on $MOUNT_POINT (threshold is $THRESHOLD%)."
    echo "$MESSAGE" | mail -s "$SUBJECT" "$TO_EMAIL"
else
    echo "Disk space is okay on $MOUNT_POINT: $FREE_PERCENT% free."
fi
