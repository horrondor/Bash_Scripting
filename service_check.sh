#!/bin/bash

# check if a service is running or not

service_name="apache2"

if systemctl is-active --quiet $service_name; then
    echo "$service_name is running"
else
    echo "$service_name is not running"    
fi    