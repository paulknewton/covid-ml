# Build a list of graphs and save as a Jekyll YAML file
#
# usage: run this from the docs root folder (not _bin or in the parent folder)
#

PYTHON_SCRIPT=_bin/collections.py
PYTHON_EXE=python3

function build_yaml { # directory format output.yaml
  echo "Processing `basename $1`..."
  find $1 -name *.png | sort | $PYTHON_EXE $PYTHON_SCRIPT --format $2 > "$3"
}

build_yaml graphs/totals standard _data/totals.yml
build_yaml graphs/rates standard _data/rates.yml
build_yaml graphs/countries countries _data/countries.yml
