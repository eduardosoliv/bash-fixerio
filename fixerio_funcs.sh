#!/bin/bash

function get_query_params {
  if [ -z "$2" ]; then
    echo "?base=$1"
  else
    echo "?base=$1&symbols=$2"
  fi
}

function latest {
  url="http://api.fixer.io/latest"$(get_query_params $1 $2)
  content=$(curl -s "$url")
  echo $content
}
