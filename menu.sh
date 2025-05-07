#!/bin/bash
PS3="Choose an option: "
select opt in "Disk Usage" "Memory Usage" "Exit"; do
  case $REPLY in
    1) df -h ;;
    2) free -h ;;
    3) break ;;
    *) echo "Invalid option" ;;
  esac
done
