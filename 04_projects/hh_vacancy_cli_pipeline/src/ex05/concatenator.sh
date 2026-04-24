#!/bin/sh

OUTPUT_FILE="hh_positions_reconstructed.csv"

FILES=$(ls -1 ????-??-??.csv 2>/dev/null | sort)

if [ -z "$FILES" ]; then
    echo "No partition files found (expected YYYY-MM-DD.csv)" >&2
    exit 1
fi

FIRST_FILE=$(printf "%s\n" "$FILES" | head -n 1)
head -n 1 "$FIRST_FILE" > "$OUTPUT_FILE"

for file in $FILES; do
    tail -n +2 "$file" >> "$OUTPUT_FILE"
done