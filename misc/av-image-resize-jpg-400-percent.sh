for i in *.jpg; do convert "$i" -resize 400% "$(basename "$i" .jpg)".jpg; done