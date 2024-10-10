#!/bin/bash
org=$1

URL="https://whois.ipip.net/search/$org"

# Fetch the HTML content and extract ASN links and their titles
curl -s "$URL" | grep -oP '<a href="/AS\d+" title="[^"]*">AS\d+</a>' | while read -r line; do
  # Extract ASN and title using regex
  #asn=$(echo "$line" | grep -oP 'AS\d+')
  title=$(echo "$line" | grep -oP '(?<=title=")[^"]*')

  # Print the ASN and title
  echo "ASN: $title"
done
