#!/bin/bash
rm results.txt

for b in 10 25 50 100 150
do
    for n in 1 2 4 8 12 16 20 26 32
    do
        for i in 1 2 3 4 5
        do
            ./othello -s -t -b $b -n $n >> results.txt
        done
    done
done
echo "Test concluded."