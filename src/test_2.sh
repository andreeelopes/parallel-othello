#!/bin/bash
rm results.txt

for b in 8 10 25 50 100
do
    for n in 1 2 4 8 16 32
    do
        for i in 1 2 3 4 5
        do
            ./othello -s -t -b $b -n $n >> results.txt
        done
    done
done
echo "Test concluded."