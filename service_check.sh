#!/bin/bash

# check if a service is running or not

service_name="apache2"

if systemctl is-active --quiet $service_name; then
    echo "$service_name is running"
else
    echo  $service_name is not running... restarting it now
    sudo systemctl restart $service_name

    if systemctl is-active --quiet $service_name; then   
        echo "$service_name has successfullt restarted."
    else
        echo "failed to restart $service_name"    
    fi  
fi      