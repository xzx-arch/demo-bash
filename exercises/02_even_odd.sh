#!/bin/bash
# Exercise 2 – Even or odd
# Goal:
#   ./02_even_odd.sh 4    -> 4 is even
#   ./02_even_odd.sh 7    -> 7 is odd
#   ./02_even_odd.sh      -> "Usage: ..." on stderr, exit code 1
#   ./02_even_odd.sh abc  -> "Error: ..." on stderr, exit code 2
# Hints: [[ $n =~ ^-?[0-9]+$ ]] checks for a whole number.
#        (( n % 2 == 0 )) is true when n is even.
set -euo pipefail

# TODO: if there are no arguments, print usage to stderr (>&2) and exit 1

# TODO: if $1 is not a number, print an error to stderr and exit 2

# TODO: print "<n> is even" or "<n> is odd"

if [[ $# -eq 0 ]]; then
  echo "Usage: $0 <number>" >&2
  exit 1

fi

n=$1

if [[ ! $n =~ ^-?[0-9]+$ ]]; then
  echo "Error: argument must be an integer" >&2
  exit 2

fi


if (( n % 2 == 0 )); then
  echo "$n is even"
else
  echo "$n is odd"

fi


