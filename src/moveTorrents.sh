#!/bin/bash

for f in *.mkv
do
    folderName=$(echo ${f//,/}) #remove all ,
    folderName=$(echo ${f//./}) # remove all .
    folderName=$(echo "$folderName" | sed 's![^-]*$!!' | sed 's/.$//' | xargs)
	
    echo Folder: $folderName
    echo File: $f

    mkdir "$folderName"
    mv "$f" "$folderName"
    chmod 777 "$folderName"
done
