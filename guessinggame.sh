#!/bin/bash

# Function to play the guessing game
guess_files() {
    local file_count=$1
    local guess=-1

    while [ $guess -ne $file_count ]; do
        read -p "Guess how many files are in the current directory: " guess
        
        if [ $guess -lt $file_count ]; then
            echo "Too low. Try again."
        elif [ $guess -gt $file_count ]; then
            echo "Too high. Try again."
        else
            echo "Congratulations! You guessed correctly."
        fi
    done
}

# Main script
echo "Welcome to the Guessing Game!"
num_files=$(ls -1 | wc -l)
guess_files $num_files