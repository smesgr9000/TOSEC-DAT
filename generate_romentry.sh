#!/bin/bash

# script to generate a rom xml node of given file(s)

for line in "$@"
do
    size=$(wc -c < "$line")
    crc=$(crc32 "$line")
    md=($(md5sum "$line"))
    sha=($(sha1sum "$line"))
    echo -e "\t\t<rom name=\"$line\" size=\"$size\" crc32=\"$crc\" md5=\"$md\" sha1=\"$sha\"/>"
done
