#!/bin/bash


#System_health_check_up
logfile="$HOME/system_health.log"
services=("nginx" "docker" "ssh")

echo "System Health check: $(date) ====" >> "$logfile"
echo "Uptime: $(uptime -p)" >> "$logfile"
echo "Load Average: $(cat /proc/loadavg)" >> "$logfile"
echo "Memory usage:" >> "$logfile"
free -h >> "$logfile"
echo "Top 5 Memory-consuming Processes:" >> "$logfile"
ps aux --sort=-%mem | head -n 6 >> "$logfile"

echo "=========================================" >> "$logfile"
echo "" >> "$logfile"
