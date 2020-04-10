#!/usr/bin/env bash
# Generate graphs and upload to github.com
#
#

# refresh code
git pull

# build graphs
jupyter nbconvert --to html covid.ipynb

# add timestamp to HTML file and store in docs folder
TS=`date`
sed "s_<h1 id=\"COVID-19-ML\"_Last updated\: $TS<hr>&_" covid.html > docs/covid.html

# commit to git
git add docs/* covid.html
git commit -m "Updated graphs"
git push
