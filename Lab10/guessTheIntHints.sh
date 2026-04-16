#!/bin/bash

#################
# Author: Brian Rodriguez
# Date: Apr 16, 2026
# Description: Prompts for a guess and gives high/low/correct hint feedback.

# Secret integer used for comparison in this practice script.
secretInt=42

# Ask the user for a guess in the expected range.
echo "Enter an integer between 0 and 100:"

# Read user input into guessedInt.
read guessedInt

# Validate that guessedInt is an integer in the range 0 to 100.
if [[ ! "$guessedInt" =~ ^[0-9]+$ ]] || [[ "$guessedInt" -lt 0 || "$guessedInt" -gt 100 ]]; then
    echo "Error: Please enter a whole number between 0 and 100."
    exit 1
fi

# Give the user a hint based on how guessedInt compares to secretInt.
if [[ "$guessedInt" -eq "$secretInt" ]]; then
    echo "You guessed correctly!"
elif [[ "$guessedInt" -lt "$secretInt" ]]; then
    echo "Your guess was too low."
else
    echo "Your guess was too high."
fi
