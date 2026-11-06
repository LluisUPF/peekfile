#!/usr/bin/bash

if [[ -z "$2" ]]; then
  X=3
else
  X=$2
fi

LINES=$(cat "$1" | wc -l)

if [[ $LINES -le $(( 2 * X )) ]]; then
  cat "$1"
else
  echo "Warning: the file is too long, showing only the first and last $X lines"
  head -n "$X" "$1"
  echo "..."
  tail -n "$X" "$1"
fi
 

