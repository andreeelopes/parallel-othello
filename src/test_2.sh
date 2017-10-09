#!/bin/bash
rm results.txt

for b in 10 25 50 100 150
do
    for n in 1 2 4 8 10 12 14 16
    do
        for i in 1 2 3 4 5 6 7 9 10
        do
            ./othello -s -t -b $b -n $n >> results.txt
        done
    done
done
echo "Test concluded."