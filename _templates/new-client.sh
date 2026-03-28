#!/bin/bash

# Usage: ./new-client.sh client-name

CLIENT=$1

BASE=~/Development/bwk-digital

if [ -z "$CLIENT" ]; then

  echo "Usage: ./new-client.sh client-name"

  exit 1

fi

mkdir -p "$BASE/$CLIENT"/{website,web-app,mobile-app,docs,assets}

echo "# $CLIENT" > "$BASE/$CLIENT/docs/README.md"

echo "Created project structure for $CLIENT"

echo ""

ls -la "$BASE/$CLIENT"

