#!/bin/bash
# Name: Jamie Knowles
# Student Number: C00307559
# Date: 03/11/2025
# Purpose: To check a list of URLs from urls.txt and print only those that return HTTP status code 200

infile="${1:-urls.txt}"

# Check if the input file exists
if [ ! -f "$infile" ]; then
  echo "Input file not found: $infile" >&2
  exit 1
fi

# Read each URL from the file
while IFS= read -r url; do
  # Skip blank lines or lines starting with '#'
  [[ -z "$url" || "$url" =~ ^# ]] && continue

  # Use curl to silently check the HTTP status code (-s silent, -o discard body, -w write code)
  code="$(curl -s -o /dev/null -w "%{http_code}" -L --max-time 10 "$url")"

  # If the code equals 200, print the URL
  if [ "$code" = "200" ]; then
    echo "[OK] $url"
  fi
done < "$infile"