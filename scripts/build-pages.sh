#!/usr/bin/env bash
# Wraps index.html (the game page) in a full HTML document for GitHub Pages.
# Run after changing index.html:  ./scripts/build-pages.sh
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p docs
{
  cat <<'HEAD'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="theme-color" content="#1a2342">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="Backyard Blitz">
<meta name="description" content="Slingshot a toy race car through six giant worlds, land flips and race your ghost.">
<link rel="manifest" href="manifest.webmanifest">
<link rel="icon" type="image/png" sizes="32x32" href="icons/favicon-32.png">
<link rel="icon" type="image/png" sizes="192x192" href="icons/icon-192.png">
<link rel="apple-touch-icon" href="icons/apple-touch-icon.png">
</head>
<body>
HEAD
  cat index.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
touch docs/.nojekyll
echo "Built docs/index.html"
