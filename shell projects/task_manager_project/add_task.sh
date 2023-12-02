#!/bin/bash

read -p "Enter task description: " description
echo "$description" >> tasks.txt
echo "Task added successfully!"
