#!/bin/bash

# for curr in {1..10}
# do 
#     echo $curr
#     sleep 1
# done 

# echo "This is outside of the for loop."



for file in logfiles/*.log
do 
    tar -czvf $file.tar.gz $file
done

