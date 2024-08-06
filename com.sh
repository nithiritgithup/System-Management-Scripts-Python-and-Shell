#!/bin/bash

echo "Enter your name:"
read name
echo "Welcome user, $name"

if [ "$name" == "vk" ]; then
    echo "You are not allowed to use this app."
else
    while true; do
        echo "1. Make directory"
        echo "2. Make file"
        echo "3. Remove directory and file"
        echo "4. htop"
        echo "5. tree"
        echo "6. Exit"
        echo "Enter option:"
        read opt

        if [ "$opt" -eq 1 ]; then
            echo "Enter directory name:"
            read dir
            mkdir "$dir"
            echo "Directory created successfully."
        elif [ "$opt" -eq 2 ]; then
            echo "Enter file name:"
            read file
            touch "$file"
            echo "File created successfully."
        elif [ "$opt" -eq 3 ]; then
            echo "Enter directory to remove:"
            read dir_to_remove
            rmdir "$dir_to_remove"
            echo "Directory removed successfully."
            echo "Enter file name to remove:"
            read file_to_remove
            rm "$file_to_remove"
            echo "File removed successfully."
        elif [ "$opt" -eq 4 ]; then
            htop
        elif [ "$opt" -eq 5 ]; then
            tree
        elif [ "$opt" -eq 6 ]; then
            echo "Thank you for visiting our app."
            exit 0
        else
            echo "You entered an invalid option. Please check and try again."
        fi
    done
fi
