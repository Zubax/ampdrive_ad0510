#!/bin/sh

SCRIPTDIR=$(dirname $0)

# Check if file parameter exists
if [ $# -ne 1 -o ! -f $SCRIPTDIR/$1 ] ; then
    echo "USAGE: $0 <filename>.tex"
    exit 1
fi

# Check if file extension is .tex
if [ $(echo $1 | tail -c5) != ".tex" ] ; then
    echo "USAGE: $0 <filename>.tex"
    exit 1
fi

#
# Main
#
cd $SCRIPTDIR
pdflatex --halt-on-error --shell-escape $1
pdflatex --halt-on-error --shell-escape $1
pdflatex --halt-on-error --shell-escape $1
