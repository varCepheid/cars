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
For option 2, the script creates an array with the lines of the `my-old-cars` file sorted numerically. It then prints each non-empty entry in the array.
For option 3, the script uses `break` to exit the while-loop and stop the program.
The case-statement also has a default option, prompting the user to choose a recognized input.

## Testing Results
I tested manually the 1/2/3 inputs and added my own car year, make, and model to the list. I also tested the file inputs in the `cars-input` file. I tested several different car years to make sure that the sorting algorithm was working correctly.

## Challenges and Solutions
My major challenge for this assignment was sorting the cars correctly. I had to learn how to create arrays from files and how to sort arrays and files. In order to display the information clearly, I also had to learn how to substitute characters in strings and how to check if a string is empty. Using the internet, I discovered the `sort`, `mapfile`, and `tr` commands and the `!` control in conditional expressions. The most confusing part of all of this was that the sorted array that the program creates has far more elements than the file it's sorting from has lines.
Additionally, a minor challenge I faced was that a new car would be added to the list with improper line spacing, so I learned that I can use the `-e` flag with the `echo` command to make `/n` print a new line.

## Resources
I referenced several previous assignments and the following internet pages:
[using the `mapfile` command](https://stackoverflow.com/questions/30988586/creating-an-array-from-a-text-file-in-bash)
[inserting a new line in the `echo` command](https://stackoverflow.com/questions/20536112/how-can-i-insert-a-new-line-in-a-linux-shell-script)
[sorting arrays](https://stackoverflow.com/questions/7442417/how-to-sort-an-array-in-bash)
[using the `sort` command](https://www.geeksforgeeks.org/linux-unix/sort-command-linuxunix-examples/)
[replacing characters in a string using `tr`](https://stackoverflow.com/questions/2871181/replacing-some-characters-in-a-string-with-another-character)
[checking for empty strings](https://stackoverflow.com/questions/13509508/check-if-string-is-neither-empty-nor-space-in-shell-script)

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
