#!/bin/bash

if [ $# -eq 4]
then
count=0

for file in $(find $4 -type f -size +$1 -size -$2)
do
let "count = count + 1"
echo -e $file ",\t" $(basename "$file") `stat $file -c ",%s byte"` >> $3
done

echo "Total number of files = $count"

else
echo -e "Not enought arguments!\n  Enter min size, max size, file, directory."
fi
