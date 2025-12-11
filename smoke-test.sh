#!/usr/bin/env bash
set -eu
PORT=8000
ROOT_DIR=$(pwd)
# Start a simple HTTP server in background
python3 -m http.server $PORT >/tmp/smoke-http.log 2>&1 &
PID=$!
sleep 1
trap "kill $PID >/dev/null 2>&1 || true" EXIT

# Check that video file is reachable and returns proper Content-Type
VIDEO_URL="http://localhost:$PORT/video/0307.mp4"
INDEX_URL="http://localhost:$PORT/index.html"

echo "Checking $VIDEO_URL"
HTTP_HEADER=$(curl -sI "$VIDEO_URL" || true)
if [ -z "$HTTP_HEADER" ]; then
  echo "Error: no response for video URL"
  exit 2
fi
STATUS=$(echo "$HTTP_HEADER" | awk 'NR==1{print $2}')
CTYPE=$(echo "$HTTP_HEADER" | tr -d '\r' | awk -F': ' '/Content-Type/{print $2}')

echo "Status: $STATUS"
echo "Content-Type: $CTYPE"

if [ "${STATUS}" != "200" ] && [ "${STATUS}" != "206" ]; then
  echo "Unexpected status for video: $STATUS"
  exit 3
fi

if [[ "$CTYPE" != video/mp4* ]]; then
  echo "Warning: unexpected Content-Type for video. Expected video/mp4, got: $CTYPE"
fi

# Check index.html contains bg-video element
echo "Fetching index.html and checking for .bg-video"
INDEX=$(curl -s "$INDEX_URL")
if echo "$INDEX" | grep -q "class=\"bg-video\""; then
  echo "Index contains .bg-video"
else
  echo "Error: .bg-video not found in index.html"
  exit 4
fi

# Basic HTML validation: ensure <video> tag present
if echo "$INDEX" | grep -q "<video"; then
  echo "Video tag present"
else
  echo "Error: <video> tag not present"
  exit 5
fi

echo "Smoke tests passed"
