#!/bin/bash

# Configuration
PLAYLIST_URL="https://www.youtube.com/playlist?list=PLhNWD5DBxBON9PdMXoT9dkhj8FngL2dsb"
DOWNLOAD_DIR="$HOME/playlist"
ARCHIVE_FILE="$DOWNLOAD_DIR/downloaded.txt"
FORMAT="bestaudio/best"
AUDIO_FORMAT="mp3"

# Create download directory if it doesn't exist
mkdir -p "$DOWNLOAD_DIR"

# Run yt-dlp to download audio only, skipping already downloaded videos
yt-dlp \
    --extract-audio \
    --audio-format "$AUDIO_FORMAT" \
    --output "$DOWNLOAD_DIR/%(title)s.%(ext)s" \
    --download-archive "$ARCHIVE_FILE" \
    -f "$FORMAT" \
    "$PLAYLIST_URL"
