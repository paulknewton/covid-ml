#!/usr/bin/env bash
# Generate graphs and upload to github.com
#
#

# refresh code
git pull

# build graphs
jupyter nbconvert --to html covid.ipynb

# commit to git
git add docs/* covid.html
git commit -m "Updated graphs"
git push
