#!/bin/bash

[[ $# -lt 2 ]] && LAST="+3" || LAST=$2
FILE=$1

# By default, last=+3 : cut the first 3 obs
#echo "Plotting the last $LAST from $FILE"

#export GNUTERM="sixelgd size 1280 720 truecolor font arial 10"
export GNUTERM="sixelgd size 1280 360 font arial 10"

# Use only the 5th field
cat $FILE |\
awk '{ print $5}' | tail -n $LAST | \
gnuplot-nox -e "set title '$FILE'; plot '<cat'"
