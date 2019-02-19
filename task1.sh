#!/bin/bash

#the script outputs the absolute path, relative path 
#and file size to the specified file ($ 3).

if [ $# -eq 3]
then

for file in $(find $2 -type f -user $1)
do
echo -e $file ",\t" $(basename "$file") `stat $file -c ",%s byte"` >> $3
done

var1=$(find $2 -type f |wc -l)
echo "Count of files in directory: $var1"

var2=$(find $2 -type f |wc -l)
echo "Count of folder: $var2"

echo "Total = $(($var1 + $var2))"

else
echo -e "Not enought arguments!\n  Enter username, directory, file."
fi