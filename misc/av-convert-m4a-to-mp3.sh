for i in *.m4a; do ffmpeg -i "$i" -qscale 0 "$(basename "$i" .m4a)".mp3; done