:: ref: https://superuser.com/questions/277642/how-to-merge-audio-and-video-file-in-ffmpeg
for %%F in (*.avi) do (ffmpeg -i "%%~nF.avi" -i "%%~nF.wav" -c:v copy -c:a aac "%%~nF-merged.avi")