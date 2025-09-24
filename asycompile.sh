#!/bin/bash

# source and target directories
SRC_DIR="$(pwd)"
OUT_DIR="$SRC_DIR/output"

# check if output directory exists
if [ ! -d "$OUT_DIR" ]; then
    echo "Error: output directory not found in $SRC_DIR"
    exit 1
fi

# compile all .asy files in current folder
for f in "$SRC_DIR"/*.asy; do
    [ -e "$f" ] || continue  # skip if no .asy files
    base=$(basename "$f" .asy)
    asy "$f"
    mv "${base}.pdf" "$OUT_DIR"/
done

echo "All PDFs moved to $OUT_DIR"
