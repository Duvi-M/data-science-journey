#!/bin/sh

IN="../ex03/hh_positions.csv"
OUT="hh_uniq_positions.csv"

echo '"name","count"' > "$OUT"

tail -n +2 "$IN" \
  | cut -d',' -f3 \
  | grep -v '^"-"$' \
  | sort | uniq -c | sort -rn \
  | awk '{print $2","$1}' >> "$OUT"