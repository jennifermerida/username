#!/bin/bash

echo "Username rules:"
echo "- only lowercase letters, digits, and underscores"
echo "- must start with a lowercase letter"
echo "- must be between 3 and 12 characters long"

while true; do
    echo -n "Enter a username: "
    read -r username

    if [[ "$username" =~ ^[a-z][a-z0-9_]{2,11}$ ]]; then
        echo "Thank you. Username accepted."
        exit 0
    else
        echo "Invalid username. Please try again."
    fi
done

