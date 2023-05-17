#!/bin/bash

while true; do
  # Prompt user for URL
  read -p "Enter the URL to download video playlist (e.g. https://www.youtube.com/playlist?list=oP3jsjZn9BdGLdI): " url

  # Call yt-dlp to download youtube playlist as video (best quality)
  yt-dlp --ignore-errors --output "%(title)s.%(ext)s" --yes-playlist "$url"
done