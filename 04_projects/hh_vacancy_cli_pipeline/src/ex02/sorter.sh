#!/bin/sh

# Directory
DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

# Input 
IN="$DIR/../ex01/hh.csv"

# Output
OUT="$DIR/../ex02/hh_sorted.csv"

# 1) save header
head -n 1 "$IN" > "$OUT"

# 2) Order:
#    -t ','        -> separator CSV
#    -k2,2         -> order by created_at
#    -k1,1n        -> then by id
tail -n +2 "$IN" | sort -t ',' -k2,2 -k1,1n >> "$OUT"
