# for each jpeg and png in this folder, do gmic command and save as new file
file_ext1=jpg
file_ext2=png
gmic_command="fx_blocks3d 128,0,4,1.764,0,10.08,45,52.4957,49.2255,-87.6,-61.8,-100,0.5,0.7,1,1,0,0,0,128"

for i1 in *.$file_ext1; do gmic "$i1" $gmic_command -o "$(basename "$i1"-3dblocks_res128)."$file_ext1""; done

for i2 in *.$file_ext2; do gmic "$i2" $gmic_command -o "$(basename "$i2"-3dblocks_res128)."$file_ext2""; done