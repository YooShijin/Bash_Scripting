#!/bin/bash

# mynum=300

# if [ $mynum -lt 200 ]
# then 
#     echo "The condition is true."
# else
#     echo "The variable is not equal to 200"
# fi

# if [ -f myfile ]
# then 
#     echo "The file exists."
# else
#     echo "The file does not exit."
# fi


cmd=htop

if command -v $cmd
then
    echo "$cmd is availale, let's run it..."
else 
    echo "$cmd is NOT available, installing it..."
    sudo apt update && sudo apt install -y $cmd
fi

$cmd
