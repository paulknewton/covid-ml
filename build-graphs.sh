#!/usr/bin/env bash
# Generate graphs and upload to github.com
#
#
add_timestamp() { # input_file timestamp
    TS=`date`
    sed "s_<h1 id=\"Data-Science-and-COVID-19\"_Last updated\: $TS<hr>&_" "$1"
}
# refresh code
git pull

# build graphs
jupyter nbconvert --to html --execute --ExecutePreprocessor.timeout=-1 covid.ipynb

# add timestamp to HTML file and store in docs folder
add_timestamp covid.html > docs/covid.html
#add_timestamp docs/index_template.html > docs/index.html

# re-build collection of graphs
cd docs
./_bin/build-graph-list.sh
cd ..

# commit to git
git add docs/* covid.html
#git status
git commit -m "Updated graphs"
git push
