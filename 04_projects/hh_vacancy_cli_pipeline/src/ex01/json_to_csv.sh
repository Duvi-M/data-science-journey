#!/bin/sh

# Rute
DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

# Input
IN="$DIR/../ex00/hh.json"

# Output
OUT="$DIR/../ex01/hh.csv"

# Ejecute jq with filter
jq -r -f "$DIR/filter.jq" "$IN" > "$OUT"