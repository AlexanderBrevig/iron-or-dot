#!/usr/bin/env sh
# Wraps src/page.html (an Artifact-style fragment: no doctype/head) into a full
# document for GitHub Pages. Run after editing the page.
set -eu
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="nb">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>' \
    '<title>Korn, hakk og dioptrier</title>' \
    '<meta name="description" content="Interaktiv modell av siktebildet med åpne sikter og rødpunkt: nærsynt, langsynt, aldersyn, astigmatisme og anisometropi.">' \
    '<meta property="og:title" content="Korn, hakk og dioptrier">' \
    '<meta property="og:description" content="Slik kan siktebildet se ut med ulike brillestyrker, med åpne sikter og rødpunkt.">' \
    '</head>' '<body>'
  sed '/^<title>.*<\/title>$/d' src/page.html
  printf '%s\n' '</body>' '</html>'
} > index.html
echo "built index.html"
