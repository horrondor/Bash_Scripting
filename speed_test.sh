#!/bin/bash

#Checking internet speed

log_file="$HOME/internet_speed_log.txt"

echo "Running speed test"
speedtest-cli >> "$log_file"

echo "Speed test complete. Results saved to $log_file"