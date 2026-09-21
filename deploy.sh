#!/bin/bash
# Objektseite aktualisieren und auf GitHub Pages veroeffentlichen.
set -e
cd "$(dirname "$0")"
git add -A
git commit -m "${1:-Objektseite aktualisiert}" || echo "nichts zu committen"
git push
echo "Deployment laeuft. In ein bis zwei Minuten ist die Aenderung live."
