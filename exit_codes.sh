#!/bin/bash

# pkg=htop

# sudo apt install $pkg

# echo "The exit code for the package install is: $?"

# $pkg


# pkg=huehue

# sudo apt install $pkg >> package_install_results.log

# if [ $? -eq 0 ]
# then
#     echo "The installation of $pkg was succesfull."
#     echo "The new command is available here:"
#     which $pkg
# else
#     echo "$pkg failed to install." >> package_install_failure.log
# fi



# directory=/notexitst

# if [ -d $directory ]
# then 
#     echo $?
#     echo "The directory $directory exitsts."
# else
#     echo $?
#     echo "The directory $directory doesn't exists."
# fi

# echo "The exit code for this script run is $?"


# echo "Hello world"
# exit 199
# echo $?

directory=/etc

if [ -d $directory ]
then
    echo "The directory $directory exists."
    exit 0
else
    echo "The directory $directory doesn't exist."
    exit 1
fi

echo "The exit code for this script run is: $?"
echo "You didn't see that statement."
echo "You won't see this one either."