#!/bin/bash
TODO_FILE="$HOME/todo.txt"
echo "$@" >> "$TODO_FILE"
echo "Task added: $@"
