#!/bin/bash

FILES=$(sed -r 's/^\s*(.*\S)*\s*$/\1/;/^$/d' files.txt)

echo "$FILES" | while read -r line ; do
    echo "Copying $line..."
    mkdir -p "./$(dirname $line)"
    cp -r "$HOME/$line" ./$line
done
