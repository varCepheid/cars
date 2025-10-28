# README for Animals Script

## Author Information
- **Name:** Alex Vennebush
- **Course:** CPSC 298 Intro to *nix
- **Assignment:** Cars Script - Selecting User Choices
- **Date:** 27 October 2025

## Program Description
This script maintains a list of old cars, storing their years, makes, and models.
The program repeatedly prompts the user to choose to add a new car to the list, display the list of cars, or exit.
If the user chooses to add a new car, the program further prompts them to enter the year, make, and model of the car.
If the user chooses to display the list, the cars will be sorted by year.

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `cars-input`):
```bash
./cars.sh < cars-input
```
## How the Script Works
The script is wrapped in a while-loop with the condition `true`, indicating that it will continue to run until it is interrupted.
The script prompts the user to choose 1, 2, or 3, and then uses a case-statement to run different code depending on the choice.
For option 1, the script uses `read` to get the details of the car from input and appends them to the end of the `my-old-cars` file.
For option 2, SORTING MECHANISM?
For option 3, the script uses `break` to exit the while-loop and stop the program.
The case-statement also has a default option, prompting the user to choose a recognized input.

## Testing Results
I tested manually the 1/2/3 inputs and added my own car year, make, and model to the list.
I also tested the file inputs in the `cars-input` file.

## Challenges and Solutions
A minor challenge was that a new car would be added to the list with improper line spacing, so I learned that I can use the `-e` flag with the `echo` command to make `/n` print a new line. A bigger challenge was sorting the list by year when displaying the cars.

## Resources
I referenced last week's assignment, animals, and the following internet pages:
[using the `mapfile` command](https://stackoverflow.com/questions/30988586/creating-an-array-from-a-text-file-in-bash)
[inserting a new line in the `echo` command](https://stackoverflow.com/questions/20536112/how-can-i-insert-a-new-line-in-a-linux-shell-script)
[sorting arrays](https://stackoverflow.com/questions/7442417/how-to-sort-an-array-in-bash)
[using the `sort` command](https://www.geeksforgeeks.org/linux-unix/sort-command-linuxunix-examples/)
[replacing characters in a string using `tr`](https://stackoverflow.com/questions/2871181/replacing-some-characters-in-a-string-with-another-character)
[replacing characters in a string using `sed`](https://linuxize.com/post/how-to-use-sed-to-find-and-replace-string-in-files/)

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
