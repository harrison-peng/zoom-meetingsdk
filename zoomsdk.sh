#!/bin/bash

if [ -n "$1" ]; then
  JOIN_URL="$1"
else
  echo "Error: JOIN_URL is empty"
  exit 1
fi

if [ -n "$2" ]; then
  AUDIO_FILE="${2}.pcm"
else
  AUDIO_FILE="meeting-audio.pcm"
fi

if [ -n "$3" ]; then
  JOIN_TOKEN="$3"
else
  JOIN_TOKEN=""
fi

sudo -E JOIN_URL="$JOIN_URL" JOIN_TOKEN="$JOIN_TOKEN" AUDIO_FILE="$AUDIO_FILE" docker-compose -f compose.yaml up
