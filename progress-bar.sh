#!/bin/bash

progress-bar(){
        local curr=$1
        local len=$2
        local bar_char="|"
        local empty_char=" "
        local length=50
        local perc_done=$((curr*100/len))
        local num_bars=$((perc_done*length/100))
        local i
        local s="["
        for ((i=0;i< num_bars; i++));
        do 
            s+=${bar_char}
        done
        for ((i = num_bars; i<length; i++));
        do 
            s+=${empty_char}
        done
        s+="]"


        echo -ne "$s $curr/$len ($perc_done%)\r"

}

process-files(){
    local files=("$@")
    # echo rm "${files[@]}"
    sleep .01
}

shopt -s globstar nullglob

echo "finding files"

files=(./**/*cache)

len=${#files[@]}

echo "Found $len files" 

batchsize=4
for ((i = 0; i<len ; i+= batchsize));
do
    progress-bar "$(($i + 1))" "$len"
    process-files "${files[@]:i:batchsize}"
done
progress-bar "$len" "$len"
echo

