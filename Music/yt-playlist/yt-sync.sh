#!/bin/bash
PLAYLIST_URL="https://www.youtube.com/playlist?list=PLhNWD5DBxBON9PdMXoT9dkhj8FngL2dsb"
DOWNLOAD_DIR="$HOME/Music/yt-playlist"
ARCHIVE_FILE="$DOWNLOAD_DIR/downloaded.txt"

mkdir -p "$DOWNLOAD_DIR"
cd "$DOWNLOAD_DIR"

yt-dlp -x --audio-format mp3 --yes-playlist \
  --download-archive "$ARCHIVE_FILE" \
  -o "%(playlist_index)s - %(title)s.%(ext)s" "$PLAYLIST_URL"
