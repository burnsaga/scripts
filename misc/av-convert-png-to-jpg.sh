#!/bin/bash
# place this script next to images you want to convert, then run this script
for file in *.png; do
  mv -- "$file" "${file%.png}.jpg"
done