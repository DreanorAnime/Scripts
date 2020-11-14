#!/bin/bash

for f in *.mkv
do
    folderName=$f
    folderName=$(echo "$folderName" | sed -e 's/.mkv//g')
    folderName=$(echo "$folderName" | sed -e 's/\[[^][]*\]//g')
    folderName=$(echo "$folderName" | sed -e 's/[^a-zA-Z ][S0-9]//g')
    folderName=$(echo "$folderName" | sed -e 's/-.*//')
    folderName=$(echo "$folderName" | sed -e 's/_.*//')
    folderName=$(echo "$folderName" | sed -e 's/.//')
    folderName=$(echo "$folderName" | xargs)

    echo $folderName | xargs
	echo $f
	mkdir "$folderName"
	mv "$f" "$folderName"
	chmod 777 "$folderName"
done
