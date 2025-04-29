#!/bin/bash

#Bash script for schedule shutdown

echo "---- Power Control script ----"
echo "1) Shutdown Now"
echo "2) Schedule Shutdown"
echo "3) Reboot"
read -p "Enter your choice [1-3]:" choice


case $choice in
    1)
        echo "Shutting down now ...."
        shutdown -h now
        ;;

    2)
        read -p "Enter shutdown time(24 hr format):" shutdown_time
        echo "System will shutdown at $shutdown_time"
        shutdown -h $shutdown_time
        ;;
    3)
        echo "Rebooting now ...."
        Reboot
        ;;

    *)
        echo "Invalid Choice. Exiting."
        exit 1
        ;;        
esac




