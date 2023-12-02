#!/bin/bash

while :
do
    clear
    echo "Task Management System"
    echo "1. Add Task"
    echo "2. View Tasks"
    echo "3. Mark Task as Complete"
    echo "4. Delete Task"
    echo "5. Exit"

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            ./add_task.sh
            ;;
        2)
            ./view_tasks.sh
            ;;
        3)
            ./mark_complete.sh
            ;;
        4)
            ./delete_task.sh
            ;;
        5)
            echo "Exiting Task Management System. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac

    read -p "Press Enter to continue..."
done

