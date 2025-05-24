#!/bin/bash
find . -type f -exec md5sum {} + | sort | uniq -w32 -d --all-repeated=separate
