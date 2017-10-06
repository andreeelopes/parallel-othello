echo "THREADS = 1 | 10 TIMES | BOARD = 25" | tee res_25.txt 
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 1 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 2 | tee -a res_25.txt
echo | tee -a res_50.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 4 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 6 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 8 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 10 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 12 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 14 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 16 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 18 | tee -a res_25.txt
echo | tee -a res_25.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 25" | tee -a res_25.txt
seq 10 | xargs -Iz ./othello -c -t -b 25 -s -n 20 | tee -a res_25.txt
echo | tee -a res_25.txt


echo "THREADS = 1 | 10 TIMES | BOARD = 50" | tee res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 1 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 2 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 4 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 6 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 8 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 10 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 12 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 14 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 16 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 18 | tee -a res_50.txt
echo | tee -a res_50.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 50" | tee -a res_50.txt
seq 10 | xargs -Iz ./othello -c -t -b 50 -s -n 20 | tee -a res_50.txt
echo | tee -a res_50.txt


echo "THREADS = 1 | 10 TIMES | BOARD = 100" | tee res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 1 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 2 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 4 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 6 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 8 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 10 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 12 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 14 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 16 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 18 | tee -a res_100.txt
echo | tee -a res_100.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 100" | tee -a res_100.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 20 | tee -a res_100.txt
echo | tee -a res_100.txt


echo "THREADS = 1 | 10 TIMES | BOARD = 150" | tee res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 1 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 2 |tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 4 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 6 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 8 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 10 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 12 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 14 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 16 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 18 | tee -a res_150.txt
echo | tee -a res_150.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 150" | tee -a res_150.txt
seq 10 | xargs -Iz ./othello -c -t -b 150 -s -n 20 | tee -a res_150.txt
echo | tee -a res_150.txt


echo "THREADS = 1 | 10 TIMES | BOARD = 200" | tee res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 1 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 2 |tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 4 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 6 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 8 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 10 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 12 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 14 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 16 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 18 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 18 | tee -a res_200.txt
echo | tee -a res_200.txt
echo "THREADS = 20 | 10 TIMES | BOARD = 200" | tee -a res_200.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 20 | tee -a res_200.txt
echo | tee -a res_200.txt
