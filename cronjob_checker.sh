#!/bin/bash
crontab -l | grep "$1" && echo "Cron job found" || echo "Not found"
