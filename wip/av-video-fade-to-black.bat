:: Fades from and to black at begininning and at 30-minute mark
:: ref: https://dev.to/dak425/add-fade-in-and-fade-out-effects-with-ffmpeg-2bj7
ffmpeg -i out.flv -vf "fade=t=in:st=0:d=3,fade=t=out:st=1800:d=5" -c:a copy out2faded.flv
