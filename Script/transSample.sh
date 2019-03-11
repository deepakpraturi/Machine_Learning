#!/bin/bash
#cat $1 | tr "." "\n" > $2
if [ $3 == 's' ]
then 
   cat $1 | tr "." "\n" > $2
else
    cat $1 | tr "\n" "\n" > $2
fi
while IFS= read line
do
        # display $line or do somthing with $line
	echo "$line"
	echo "` trans -b :te $line > $4`"
        echo "HELLO WORLD"
done < $2
