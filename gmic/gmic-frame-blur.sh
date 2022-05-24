# for each jpeg and png in this folder, do gmic command and save as new file
file_ext1=jpg
file_ext2=png
gmic_command="fx_frame_blur 30,30,0,5,0,0,128,128,128,0,5,255,255,255,2,2,1,0,0.5,0.5,0"
name_append="frame-blur"

for i1 in *.$file_ext1; do gmic "$i1" $gmic_command -o "$(basename "$i1"-"$name_append")."$file_ext1""; done

for i2 in *.$file_ext2; do gmic "$i2" $gmic_command -o "$(basename "$i2"-"$name_append")."$file_ext2""; done