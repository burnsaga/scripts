REM applies watermark (transparent .png) to an existing .png, and outputs to new file
REM reference: https://www.imagemagick.org/discourse-server/viewtopic.php?t=33782

magick input.png watermark.png ^
   -resize %%[fx:t?u.w*0.9:u.w]x%%[fx:t?u.h*0.9:u.h] -gravity center -composite output_watermarked.png