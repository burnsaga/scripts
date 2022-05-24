# Reference: https://kenbenoit.net/how-to-batch-convert-pdf-files-to-text/

#!/bin/bash
for f in *.pdf
do
 echo "Processing file: $f..."
 pdftotext -enc UTF-8 "$f"
done