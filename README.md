# README for Username Validation Script

## Author Information
- **Name:** Jennifer Merida
- **Course:** CPSC 298-0 Intro to Nix
- **Assignment:** Username Validation
- **Date:** Janurary 20, 2026

## Program Description
This prgram checks if the username entered by the user meets all requirements lised below. It will repeatedly ask users to try again if they fail to meet all the requirements. The purpose is to ensure that all usernames are constistently formatted to help prevent errors for systems that may implement strict username rules.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
This script repeatedly asks users for a new attempt using a while loop which will continue until the username given is valid according to the requirements. E input is checked using grep -E to enforce the rules. The -E flag tells grep to interpret the pattern as an extended regex, while the -v flag would invert the match, allowing the script to detect invalid usernames instead of valid ones. Redirect > /dev/null 2>&1 is used for any unwanted output from grep to be suppressed using t, keeping the terminal clean while the script determines if the input is valid.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
I tested this script by typing in usernames and using the given username-input file. Valid examples like jenny_m and ana123 were accepted, while invalid ones like 23jennifer (starts with a digit) and SuperLongUsernameOMG123 (more than 12 characters) were rejected. Using the input file made it easy to quickly check multiple usernames at once.

## Resources
Class lecture slides, Class lecture videos, ChatGPT

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
