#!/bin/bash
# cars.sh
# Alex Vennebush
while true
do
    read -rp "Type 1 to add a car, 2 to display the list of cars, or 3 to exit: " choice
    case $choice in
        1)
            read -rp "What is the year of the car? " year;
            read -rp "What is the make of the car? " make;
            read -rp "What is the model of the car? " model;
            echo -e "\n${year}:${make}:${model}" >> ./my-old-cars;;
        2)
            mapfile -t cars-list < ./my-old-cars;
            carsLi
            
            
            cat ./my-old-cars;;
        3)
            echo "Exiting..."
            break;;
        *) echo "Please choose 1, 2, or 3."
    esac
done