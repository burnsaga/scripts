for i in *.JPG; do ffmpeg -i "$i" -qscale 0 "$(basename "$i" .JPG)".png; done