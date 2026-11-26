#!/usr/bin/env sh
# Wraps src/page.html (an Artifact-style fragment: no doctype/head) into a full
# document for GitHub Pages. Run after editing the page.
set -eu
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="en">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
    '<title>Iron or Dot</title>' \
    '<meta name="description" content="Interactive model of the pistol sight picture, iron sights vs red dot, for nearsighted, farsighted, presbyopic, astigmatic and anisometropic eyes.">' \
    '<meta property="og:title" content="Iron or Dot">' \
    '<meta property="og:description" content="What iron sights and a red dot look like through different prescriptions.">' \
    '</head>' '<body>'
  sed '/^<title>.*<\/title>$/d' src/page.html
  printf '%s\n' '</body>' '</html>'
} > index.html
echo "built index.html"
