#!/bin/zsh
set -euo pipefail
SRC_DIR="/Users/brandonblattner/.openclaw/workspace/magazines"
DST_DIR="/Users/brandonblattner/.openclaw/workspace/published_magazine_site/hn"
LATEST="/Users/brandonblattner/.openclaw/workspace/published_magazine_site/latest-hn.html"
mkdir -p "$DST_DIR"
LATEST_SRC=$(find "$SRC_DIR" -maxdepth 1 -type f -name '20??-??-??.html' | sort | tail -n 1)
if [[ -z "${LATEST_SRC:-}" ]]; then
  echo "No HN magazine HTML files found" >&2
  exit 1
fi
cp "$LATEST_SRC" "$DST_DIR/$(basename "$LATEST_SRC")"
cp "$LATEST_SRC" "$LATEST"
echo "$DST_DIR/$(basename "$LATEST_SRC")"
