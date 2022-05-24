# for each jpeg and png in this folder, do gmic command and save as new file
file_ext1=jpg
file_ext2=png
name_append="watermark-jb"

for i1 in *.$file_ext1; do gmic "$i1" fx_watermark_visible "\251 Joe Burns",0.4,50,25,0.5,1 -o "$(basename "$i1"-"$name_append")."$file_ext1""; done

for i2 in *.$file_ext2; do gmic "$i2" fx_watermark_visible "\251 Joe Burns",0.4,50,25,0.5,1 -o "$(basename "$i2"-"$name_append")."$file_ext2""; done