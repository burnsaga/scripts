#!/bin/bash

while true; do
  # Prompt user for URL
  read -p "Enter the URL to download video: " url

  # Call yt-dlp to download youtube video (best quality)
  yt-dlp --ignore-errors --output "%(title)s.%(ext)s" "$url"
done