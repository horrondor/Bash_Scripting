#!/bin/bash

# Function to greet the user
greet_user() {
    echo "Hello, $1! Welcome to the Bash scripting world."
}

# Ask for user's name
read -p "Enter your name: " name

# Call the function
greet_user "$name"

# Simple menu
echo "Choose an option:"
echo "1) Show current date and time"
echo "2) List files in current directory"
echo "3) Show system uptime"
echo "4) Exit"

read -p "Enter your choice [1-4]: " choice

# Process user choice
case $choice in
    1)
        echo "Current date and time: $(date)"
        ;;
    2)
        echo "Files in current directory:"
        ls -lah
        ;;
    3)
        echo "System uptime:"
        uptime
        ;;
    4)
        echo "Goodbye!"
        exit 0
        ;;
    *)
        echo "Invalid option selected."
        ;;
esac
