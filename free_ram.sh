#!/bin/bash
# Monitoring free RAM space using free -mt

free_space=$(free -mt | grep "Total" | awk '{print $4}')
TH=500

if [[ $free_space -lt $TH ]]; then
    echo "Warning! RAM space is low"
else
    echo "RAM space is sufficient - $free_space MB"
fi
