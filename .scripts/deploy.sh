#!/bin/sh -ex

GIT_NAME="FreeMiNT Project"
GIT_EMAIL="freemint-list@mail.atariforge.org"
GIT_REPOSITORY="git@github.com:freemint/tos.hyp.git"

#chmod 600 ".scripts/deploy-key";
#ssh-add ".scripts/deploy-key"; 
cd gh-pages
git init
git config user.name "${GIT_NAME}"
git config user.email "${GIT_EMAIL}"
git add .
git commit -m "Publish ${GITHUB_SHA}"
