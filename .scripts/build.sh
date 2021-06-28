#!/bin/bash -eux
# -e: Exit immediately if a command exits with a non-zero status.
# -u: Treat unset variables as an error when substituting.
# -x: Display expanded script commands

mkdir -p "gh-pages/de/bilder" "gh-pages/en/bilder" "gh-pages/archives"
cp -r "bilder/gif" "gh-pages/de/bilder"
cp -r "bilder/gif" "gh-pages/en/bilder"
cp "html/tos_hyp.gif" "gh-pages"
$UDO -D german --html --tree -o "$PWD/gh-pages/de/index.html" "$PWD/tos_hyp.u"
$UDO -D german --stg --no-warningslines --check -o "$PWD/gh-pages/archives/tos_hyp_de.stg" "$PWD/tos_hyp.u"
$HCP -z -o "gh-pages/archives/tos_hyp.hyp" "gh-pages/archives/tos_hyp_de.stg"

cd "gh-pages/archives"
zip -9 tos_hyp_de.zip "tos_hyp.hyp" "tos_hyp.ref"
rm -f *.stg *.uhs *.uls *.hyp *.ref
cd -

$UDO -D english --html --tree -o "$PWD/gh-pages/en/index.html" "$PWD/tos_hyp.u"
$UDO -D english --stg --no-warningslines --check -o "$PWD/gh-pages/archives/tos_hyp_en.stg" "$PWD/tos_hyp.u"
$HCP -z -o "gh-pages/archives/tos_hyp.hyp" "gh-pages/archives/tos_hyp_en.stg"
  
cd "gh-pages/archives"
zip -9 tos_hyp_en.zip "tos_hyp.hyp" "tos_hyp.ref"
rm -f *.stg *.uhs *.uls *.hyp *.ref
cd -
  
