#!/usr/bin/env bash
# Exercise 3 – Countdown
# Goal: count down from N (default 5), one number per line, then "Liftoff!"
#   ./03_countdown.sh 3  ->  3
#                            2
#                            1
#                            Liftoff!
# Use a while loop.
set -euo pipefail

# TODO: set count to $1, or 5 if no argument

# TODO: while count is greater than 0, print it and subtract 1

# TODO: print Liftoff!
#


n=${1:-5}


while [[ $n -gt 0 ]]; do
	echo "$n"
	n=$(($n - 1))
done

echo "Liftoff!"




