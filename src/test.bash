echo number of threads = 2 - 10 times
seq 10 | xargs -Iz ./othello -c -t -d 8 -b 10 -s -n 2

echo number of threads = 4 - 10 times

seq 10 | xargs -Iz ./othello -c -t -d 8 -b 10 -s -n 4
