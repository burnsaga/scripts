#!/bin/bash

while true; do
  # Prompt user for URL
  read -p "Enter the URL to download audio: " url

  # Call yt-dlp to download youtube video as audio (best quality)
  yt-dlp --ignore-errors --format bestaudio --extract-audio --audio-quality 320K --output "%(title)s.%(ext)s" "$url"
done