#!/usr/bin/env bash

function build() {
  platex "${1}.latex" &&  dvipdfmx "${1}.dvi"
  rm "${1}.dvi"
  rm *.log
  rm "${1}.aux"
}

if [ -z $1 ]; then
  build "joken"
  build "twitter_python"
elif [ $1 == "--clean" -o $1 == "-c" ]; then
  rm *.div
  rm *.log
  rm *.aux
  rm *.pdf
else
  build $1
fi
