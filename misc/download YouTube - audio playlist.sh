#!/bin/bash

while true; do
  # Prompt user for URL
  read -p "Enter the URL to download audio playlist (e.g. https://www.youtube.com/watch?v=cqJJwv_Caaw&list=PLcy7IL8EgvnjIFRmoYHx3MayCj2rRwlzK): " url

  # Call yt-dlp to download youtube playlist as audio (best quality)
  yt-dlp --ignore-errors --format bestaudio --extract-audio --audio-quality 320K --output "%(title)s.%(ext)s" --yes-playlist "$url"
done