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
This script repeatedly asks users for a new attempt using a while loop which will continue until the username given is valid according to the requirements. It uses Bash’s regular expression matching to make sure that every input aligns with the requirements. If the username matches the regex, the loop will end.

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
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
- Example invalid usernames and why they fail (at least two)
- How you used the username-input file to test

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
