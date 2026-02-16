#!/bin/bash
cd "$(dirname "$0")"
echo "Was hast du geändert?"
read -p "> " msg
if [ -z "$msg" ]; then
  msg="Update"
fi
git add -A
git commit -m "$msg"
git push
echo ""
echo "Fertig! Änderungen sind auf GitHub."
read -p "Drücke Enter zum Schließen..."
