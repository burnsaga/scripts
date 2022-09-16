# for each .png in this folder, crop it to 512x288 (16:9 aspect ratio)
# reference: https://superuser.com/questions/1161340/how-to-crop-an-image-using-imagemagick-from-the-command-line

for f in *.png; do convert "$f" -gravity center -crop 512x288+0+0 +repage "$f" ; done