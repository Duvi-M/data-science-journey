#!/bin/sh

# 1) Validate argument
if [ $# -lt 1 ] || [ -z "$1" ]; then
    echo "Usage: $0 \"vacancy name\""
    exit 1
fi

# 2) Encode text for URL (spaces, etc.)
QUERY_ENCODED=$(printf '%s' "$1" | jq -sRr @uri)

# 3) Save hh.json in the same directory as the script
DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
OUT="$DIR/hh.json"

# 4) API call + formatting “each field on a new line”
curl -s \
    -H 'User-Agent: school21-ex00/1.0 (curl)' \
    "https://api.hh.ru/vacancies?text=${QUERY_ENCODED}&per_page=20" \
| jq '.' > "$OUT"