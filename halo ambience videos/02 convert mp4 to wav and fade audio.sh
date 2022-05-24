# convert .flv to .wav, while fading audio in/out
# ref: https://blog.feurious.com/add-fade-in-and-fade-out-effects-with-ffmpeg

for i in output.mp4; do ffmpeg -i "$i" -qscale 0 -af "afade=t=in:st=0:d=5,afade=t=out:st=3595:d=10" audio.wav; done