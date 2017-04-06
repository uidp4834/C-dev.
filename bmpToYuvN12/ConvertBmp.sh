#!/bin/sh 

filelist=`ls $PWD`
for file0 in $filelist
do 
#echo $file0

file=$file0

if [ "${file##*.}"x = "bmp"x ];then
    ./rgb2yuv $file
fi

done
#||[ "${file##*.}"x = "yuv"x ]      
