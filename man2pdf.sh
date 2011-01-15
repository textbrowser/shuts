#!/bin/sh
# man2pdf was written by matrobriva (http://matrobriva.altervista.org, matrobriva@libero.it).

if [ ! -x "`which ps2pdf 2> /dev/null`" ]
then
    echo "Unable to locate ps2pdf."
    exit 1
fi

man -t $1 > $1.ps && ps2pdf $1.ps

if [ ! $? -eq 0 ]
then
    exit 1
fi

rm -f $1.ps

echo "The manual for $1 was converted to a PDF and placed in the current directory."
exit 0
