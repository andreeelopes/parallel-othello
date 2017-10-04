echo number of threads = 2 - 10 times board 10
seq 10 | xargs -Iz ./othello -c -t -b 10 -s -n 2

echo number of threads = 1 - 10 times board 10
seq 10 | xargs -Iz ./othello -c -t -b 10 -s -n 1


echo number of threads = 2 - 10 times board 100
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 2

echo number of threads = 1 - 10 times board 100
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 1

echo number of threads = 2 - 10 times board 1000
seq 10 | xargs -Iz ./othello -c -t -b 1000 -s -n 2

echo number of threads = 1 - 10 times board 1000
seq 10 | xargs -Iz ./othello -c -t -b 1000 -s -n 1
