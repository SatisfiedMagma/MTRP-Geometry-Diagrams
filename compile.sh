#!/bin/bash

# source and target directories
SRC_DIR="$(pwd)"
OUT_DIR="/home/pragyan/MTRP/output"

# make sure output directory exists
mkdir -p "$OUT_DIR"

# compile all .asy files in current folder
for f in "$SRC_DIR"/*.asy; do
    [ -e "$f" ] || continue  # skip if no .asy files
    base=$(basename "$f" .asy)
    asy "$f"
    mv "${base}.pdf" "$OUT_DIR"/
done

echo "All PDFs moved to $OUT_DIR"

