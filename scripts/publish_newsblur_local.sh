#!/bin/zsh
set -euo pipefail
SRC_DIR="/Users/brandonblattner/.openclaw/workspace/magazines/newsblur"
DST_DIR="/Users/brandonblattner/.openclaw/workspace/published_magazine_site/newsblur"
LATEST="/Users/brandonblattner/.openclaw/workspace/published_magazine_site/latest-newsblur.html"
mkdir -p "$DST_DIR"
LATEST_SRC=$(find "$SRC_DIR" -maxdepth 1 -type f -name '20??-??-??.html' | sort | tail -n 1)
if [[ -z "${LATEST_SRC:-}" ]]; then
  echo "No NewsBlur magazine HTML files found" >&2
  exit 1
fi
cp "$LATEST_SRC" "$DST_DIR/$(basename "$LATEST_SRC")"
cp "$LATEST_SRC" "$LATEST"
echo "$DST_DIR/$(basename "$LATEST_SRC")"
