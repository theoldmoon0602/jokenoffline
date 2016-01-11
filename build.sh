#!/usr/bin/env bash

function build() {
  platex --shell-escape "${1}.latex" &&  dvipdfmx "${1}.dvi"
  rm "${1}.dvi"
  rm *.log
  rm "${1}.aux"
}

if [ -z $1 ]; then
  for f in *.latex; do
    build $(basename $f .latex)
  done
elif [ $1 == "--clean" -o $1 == "-c" ]; then
  rm *.dvi
  rm *.log
  rm *.aux
  rm *.pdf
else
  build $1
fi
