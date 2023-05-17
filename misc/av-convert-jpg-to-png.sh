#!/bin/bash
# place this script next to images you want to convert, then run this script
for file in *.jpg *.jpeg; do
  mv -- "$file" "${file%.*}.png"
done
