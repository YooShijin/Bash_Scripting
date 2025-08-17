#!/bin/bash

# echo "What is your favorite Linux distribution"

# echo "1 - Arch"
# echo "2 - Debian"
# echo "3 - Ubuntu"
# echo "4 - Something else..."

# read distro

# case $distro in 
#     1) echo "Arch is a rolling release.";;
#     2) echo "Debian is a community distribution.";;
#     3) echo "Ubuntu is something i prefer";;
#     4) echo "windows is useless";;
#     *) echo "you didn't enter any appropriate choice."
# esac



finished=0

while [ $finished -ne 1 ]
do 
    echo "What is your favorite linux distribution?"

    echo "1 - Arch"
    echo "2 - Debian"
    echo "3 - Ubuntu"
    echo "4 - Something else..."
    echo "5 - Exit the script."

    read distro

    case $distro in 
        1) echo "Arch is a rolling release.";;
        2) echo "Debian is a community distribution.";;
        3) echo "Ubuntu is something i prefer";;
        4) echo "windows is useless";;
        5) finished=1;;
        *) echo "you didn't enter any appropriate choice."
    esac
done 

echo "Thank you for using the script."

    
# echo "What is your favorite Linux distribution"

# echo "1 - Arch"
# echo "2 - Debian"
# echo "3 - Ubuntu"
# echo "4 - Something else..."

# read distro

# case $distro in 
#     1) echo "Arch is a rolling release.";;
#     2) echo "Debian is a community distribution.";;
#     3) echo "Ubuntu is something i prefer";;
#     4) echo "windows is useless";;
#     *) echo "you didn't enter any appropriate choice."
# esac
