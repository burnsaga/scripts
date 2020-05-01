:: Takes 4 input images (of 32x32, 64x64, 128x128, and 256x256) and converts it into one multi-resolution .ico file.
:: ref: https://www.imagemagick.org/discourse-server/viewtopic.php?t=14080

@echo off

set input_extension=png
set output_name=myicon

convert icon-32.%input_extension% icon-64.%input_extension%  icon-128.%input_extension%  icon-256.%input_extension%  %output_name%.ico