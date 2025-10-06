#!/usr/bin/env bash
set -euo pipefail

# --- Config ---
FILE_PATH="${1:-VISIONSCOPE.md}"     # Leið að skjalinu (má senda sem 1. rökbreytu)
LIMIT="${LIMIT:-10}"                      # Fjöldi commit-lína í töflunni
MARK_START="<!-- GIT_HISTORY_START -->"
MARK_END="<!-- GIT_HISTORY_END -->"

# --- Sanity checks ---
if ! git rev-parse --show-toplevel >/dev/null 2>&1; then
  echo "Error: This must be run inside a Git repository." >&2
  exit 1
fi

if [ ! -f "$FILE_PATH" ]; then
  echo "Error: File not found: $FILE_PATH" >&2
  exit 1
fi

# --- Sækja commit-sögu sem snertir aðeins þessa skrá ---
TABLE_ROWS="$(git log --date=short \
  --pretty=format:'| %an | %ad | %s | %h |' \
  -n "$LIMIT" -- "$FILE_PATH" || true)"

if [ -z "$TABLE_ROWS" ]; then
  TABLE_ROWS='| _no commits found_ |  |  |  |'
fi

# --- Byggja Markdown töfluna á öruggan hátt ---
TABLE_MD=''  # mikilvæg lína: tryggir að breytan sé til
TABLE_MD+='| Author | Date       | Message | Commit |'$'\n'
TABLE_MD+='|--------|------------|---------|--------|'$'\n'
TABLE_MD+="${TABLE_ROWS}"$'\n'

# --- Ef merkin vantar: bæta kafla aftast í skjalið ---
if ! grep -q "$MARK_START" "$FILE_PATH" || ! grep -q "$MARK_END" "$FILE_PATH"; then
  {
    echo
    echo "## Revision History"
    echo
    echo "> 🔖 Taflan hér að neðan er sjálfvirkt byggð á \`git log\` fyrir þessa skrá."
    echo
    echo "$MARK_START"
    printf '%s' "$TABLE_MD"
    echo "$MARK_END"
    echo
    echo "> Skoða allt: \`git log -- \"$FILE_PATH\" \`"
  } >> "$FILE_PATH"
  echo "Added Revision History section with markers to: $FILE_PATH"
  exit 0
fi

# --- Skipta út efni milli markeranna ---
TMP_FILE="$(mktemp)"
awk -v start="$MARK_START" -v end="$MARK_END" -v repl="$TABLE_MD" '
  BEGIN { inblock=0 }
  {
    if ($0 ~ start) { print; print repl; inblock=1; next }
    if ($0 ~ end && inblock==1) { print; inblock=0; next }
    if (inblock==0) print
  }
' "$FILE_PATH" > "$TMP_FILE"

mv "$TMP_FILE" "$FILE_PATH"
echo "Updated Revision History table in: $FILE_PATH"
