# for each jpeg and png in this folder, do gmic command and save as new file
file_ext1=jpg
file_ext2=png
gmic_command="fx_marble 0.5,1,0,0,0.4,0.6,0.6,1.1,0,100"
name_append="marble"

for i1 in *.$file_ext1; do gmic "$i1" $gmic_command -o "$(basename "$i1"-"$name_append")."$file_ext1""; done

for i2 in *.$file_ext2; do gmic "$i2" $gmic_command -o "$(basename "$i2"-"$name_append")."$file_ext2""; done