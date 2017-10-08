echo "board = 25"
echo "THREADS = 1 | 10 TIMES | BOARD = 25" > res_25.txt 
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 1 >> res_25.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 2 >> res_25.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 4 >> res_25.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 6 >> res_25.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 8 >> res_25.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 10 >> res_25.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 12 >> res_25.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 14 >> res_25.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 16 >> res_25.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 18 >> res_25.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 25" >> res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 20 >> res_25.txt


echo "board = 50"
echo "THREADS = 1 | 10 TIMES | BOARD = 50" > res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 1 >> res_50.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 2 >> res_50.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 4 >> res_50.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 6 >> res_50.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 8 >> res_50.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 10 >> res_50.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 12 >> res_50.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 14 >> res_50.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 16 >> res_50.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 18 >> res_50.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 50" >> res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 20 >> res_50.txt

echo "board = 100"
echo "THREADS = 1 | 10 TIMES | BOARD = 100" > res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 1 >> res_100.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 2 >> res_100.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 4 >> res_100.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 6 >> res_100.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 8 >> res_100.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 10 >> res_100.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 12 >> res_100.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 14 >> res_100.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 16 >> res_100.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 18 >> res_100.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 100" >> res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 20 >> res_100.txt

echo "board = 150"
echo "THREADS = 1 | 10 TIMES | BOARD = 150" > res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 1 >> res_150.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 2 >> res_150.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 4 >> res_150.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 6 >> res_150.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 8 >> res_150.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 10 >> res_150.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 12 >> res_150.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 14 >> res_150.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 16 >> res_150.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 18 >> res_150.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 150" >> res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 20 >> res_150.txt

echo "board = 200"
echo "THREADS = 1 | 10 TIMES | BOARD = 200" > res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 1 >> res_200.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 2 >> res_200.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 4 >> res_200.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 6 >> res_200.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 8 >> res_200.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 10 >> res_200.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 12 >> res_200.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 14 >> res_200.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 16 >> res_200.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 18 >> res_200.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 200" >> res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 20 >> res_200.txt

echo "Done"