#!/bin/sh

head -n 1 ../ex02/hh_sorted.csv > ../ex03/hh_positions.csv

tail -n +2 ../ex02/hh_sorted.csv | awk -F',' '
{
    name = $3

    if (name ~ /Junior|Middle|Senior/) {
        match(name, /(Junior|Middle|Senior)(\/(Junior|Middle|Senior))*/)
        name = substr(name, RSTART, RLENGTH)
    } else {
        name = "-"
    }

    print $1","$2",\""name"\","$4","$5
}
' >> hh_positions.csv