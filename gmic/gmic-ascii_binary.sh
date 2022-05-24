# for each jpeg and png in this folder, do gmic command and save as new file
file_ext1=jpg
file_ext2=png
gmic_command="fx_asciiart 1,\" .oO0\",16,15,16,2,0,0.2,0,0,\"C:/Users/god\",\"gmic_asciiart.txt\""
name_append="ascii_binary"

for i1 in *.$file_ext1; do gmic "$i1" $gmic_command -o "$(basename "$i1"-"$name_append")."$file_ext1""; done

for i2 in *.$file_ext2; do gmic "$i2" $gmic_command -o "$(basename "$i2"-"$name_append")."$file_ext2""; done