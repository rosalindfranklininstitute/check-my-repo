#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git config --global user.email "p@discombobulate.me"
git config --global user.name "discombobulateme"

git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:saucelabs/check-my-repo.git master:gh-pages
cd -
