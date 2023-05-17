# ref: https://ottverse.com/change-resolution-resize-scale-video-using-ffmpeg/
for i in *.mp4; do ffmpeg -i "$i" -vf scale=1280:1280 -preset slow -crf 18 "$i"_output.mp4; done