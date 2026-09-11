#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/app"

read -rp "Nome: " nome
read -rp "Cargo: " cargo

for f in *.html; do
  sed -i \
    -e "s|<title>.*</title>|<title>$nome · $cargo</title>|" \
    -e "18s|<h1>.*</h1>|<h1>$nome</h1>|" \
    -e "19s|<p>.*</p>|<p>$cargo</p>|" \
    "$f"
done

echo "OK: $(ls *.html | wc -l) arquivos atualizados"
