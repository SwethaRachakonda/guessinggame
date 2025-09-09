#!/usr/bin/env bash

# guessinggame.sh

# Function to ask user for a guess
ask_guess() {
  echo -n "How many files are in the current directory? Guess: "
  read guess
}

# Get actual number of files
numfiles=$(ls -1 | wc -l)

# Prompt initial guess
ask_guess

# Repeat until correct
while [[ "$guess" -ne "$numfiles" ]]; do
  if [[ "$guess" -gt "$numfiles" ]]; then
    echo "Your guess is too high."
  else
    echo "Your guess is too low."
  fi
  ask_guess
done

echo "Congratulations! You guessed the correct number of files: $numfiles."
