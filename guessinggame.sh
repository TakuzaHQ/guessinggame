#!/usr/bin/env bash

get_file_count() {
    ls -1 | wc -l
}

target=$(get_file_count)
guess=-1

echo "How many files are in the current directory?"

while [[ $guess -ne $target ]]; do
    read -r -p "Enter your guess: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid non-negative number."
    elif [[ $guess -lt $target ]]; then
        echo "Your guess is too low. Try again!"
    elif [[ $guess -gt $target ]]; then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! Your guess ($target) is correct!"
    fi
done
