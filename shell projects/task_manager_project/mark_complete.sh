#!/bin/bash

read -p "Enter the task number to mark as complete: " task_number
sed -i "${task_number}s/.*/[X] &/" tasks.txt
echo "Task marked as complete!"
