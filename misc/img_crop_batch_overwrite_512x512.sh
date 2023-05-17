# for each .png in this folder, crop it
# reference: https://superuser.com/questions/1161340/how-to-crop-an-image-using-imagemagick-from-the-command-line

for f in *.png; do convert "$f" -gravity center -crop 512x512+0+0 +repage "$f" ; done