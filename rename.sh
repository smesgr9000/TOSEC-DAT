#!/bin/bash

for var in "$@"
do
	newName="$(sed -E 's/ \([^)]*\)//g' <<< "$var")"
	mv "$var" "$newName"
done
