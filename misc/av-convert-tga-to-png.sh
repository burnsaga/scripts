for i in *.tga; do ffmpeg -i "$i" -qscale 0 "$(basename "$i" .tga)".png; done