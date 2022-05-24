:: ref: https://superuser.com/questions/1320984/concatenate-image-and-video-using-ffmpeg
:: ref: https://blog.feurious.com/add-fade-in-and-fade-out-effects-with-ffmpeg
ffmpeg -loop 1 -i image.jpg -i audio.wav -c:v libx264 -tune stillimage -vf "fade=t=in:st=0:d=5,fade=t=out:st=3595:d=10" -c:a aac -b:a 320k -pix_fmt yuv420p -shortest output.mp4