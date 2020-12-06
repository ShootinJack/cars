#! /bin/bash
# cars.sh
#Tavid Terzian

while["$Selc" != 3]
do
	echo "1) New Car"
	echo "2) Displat Cars"
	echo "3) Quit"
	echo "Enter Selection: "
	read -r Selc
	case "$Selc" in
		"1")
			echo "Enter car's make: "
			read -r make
			echo "Enter car's model: "
			read -r model
			echo "Enter car's year: "
			read -r year
			combine = "$year:$make:$model"
			echo "$combine" >> My_old_cars.txt;;
		"2")
			sort My_old_cars;;
		"3")
			echo "Goodbye! Happy driving!"
			*)"Invalid entry. Enter 1,2,or3";;
		esac
	done
