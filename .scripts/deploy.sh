#!/bin/sh -ex

GIT_NAME="FreeMiNT Project"
GIT_EMAIL="freemint-list@mail.atariforge.org"
GIT_REPOSITORY="git@github.com:freemint/tos.hyp.git"

scp -o "StrictHostKeyChecking no" "${DEPLOY_DIR}/tos_hyp.hyp" "${DEPLOY_DIR}/tos_hyp_de.hyp" "joska@login.domeneshop.no:www/atari/snapshots/guides/"

#chmod 600 ".scripts/deploy-key";
#ssh-add ".scripts/deploy-key"; 
cd gh-pages
git init
git config user.name "${GIT_NAME}"
git config user.email "${GIT_EMAIL}"
git add .
git commit -m "Publish ${GITHUB_SHA}"
