#!/bin/bash

read -p "Enter the task number to delete: " task_number
sed -i "${task_number}d" tasks.txt
echo "Task deleted successfully!"
