for i in *.png; do convert "$i" -resize 50% "$(basename "$i" .png)".png; done