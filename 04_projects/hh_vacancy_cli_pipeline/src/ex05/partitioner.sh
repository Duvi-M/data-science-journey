#!/bin/sh

INPUT="../ex03/hh_positions.csv"
HEADER=$(head -n 1 "$INPUT")

tail -n +2 "$INPUT" | while IFS= read -r line
do
    date=$(echo "$line" | cut -d',' -f2 | cut -d'T' -f1 | tr -d '"')
    file="${date}.csv"
    if [ ! -f "$file" ]; then
        echo "$HEADER" > "$file"
    fi
    echo "$line" >> "$file"
done