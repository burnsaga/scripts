for i in *.flv; do ffmpeg -i "$i" -qscale 0 "$(basename "$i" .flv)".wav; done