#!/usr/bin/env bash
set -euo pipefail
PRESET="${1:-}"
DEST="${2:-}"
if [[ "$PRESET" != "light" && "$PRESET" != "full" ]] || [[ -z "$DEST" ]]; then
  echo "Usage: $0 <light|full> <destination-directory>" >&2
  exit 1
fi
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/presets/$PRESET/workspace"
mkdir -p "$DEST"
cp -a "$SRC"/. "$DEST"/
echo "Copied preset '$PRESET' to $DEST"
