#!/usr/bin/env bash
# Generate graphs and upload to github.com
#
#
add_timestamp() { # input_file timestamp
    TS=`date`
    sed "s_<h1 id=\"COVID-19-ML\"_Last updated\: $TS<hr>&_" "$1"
}
# refresh code
git pull

# build graphs
jupyter nbconvert --to html covid.ipynb

# add timestamp to HTML file and store in docs folder
add_timestamp covid.html > docs/covid.html
#add_timestamp docs/index_template.html > docs/index.html

# commit to git
git add docs/* covid.html
git commit -m "Updated graphs"
git push
