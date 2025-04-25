#!/bin/bash
#website status checker

URL="https://www.youtube.com/"

#Send a request and get the HTTp status code
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

# check if the status code is 200 (ok)
if [ "$STATUS_CODE" -eq 200 ]; then
    echo "$URL is up and reachable"
else
    echo "$URL might be down. status code: $STATUS_CODE"    
fi