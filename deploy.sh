#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build   1

# navigate into the build output directory
cd dist   2

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init 3
git checkout -b main
git add -A 4
git commit -m 'deploy' 5

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages
# git push -f git@github.com:eslamgmalelsayed/portfolio.git  master:gh-pages 6

cd -