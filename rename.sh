#!/bin/bash

# script to rename all DATs from an official release to 
# version control naming without version suffix

for var in "$@"
do
	newName="$(sed -E 's/ \([^)]*\)//g' <<< "$var")"
	mv "$var" "$newName"
done
