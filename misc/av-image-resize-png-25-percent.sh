for i in *.png; do convert "$i" -resize 25% "$(basename "$i" .png)".png; done