echo "THREADS = 1 | 10 TIMES | BOARD = 10" | tee resultados.txt 
seq 10 | xargs -Iz ./othello -c -t -b 10 -s -n 1 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 10" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 10 -s -n 2 | tee -a resultados.txt
echo | tee -a resultados.txt

echo "THREADS = 1 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 1 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 2 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 4 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 6 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 8 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 10 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 12 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 14 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 16 | tee -a resultados.txt
echo | tee -a resultados.txt

echo "THREADS = 1 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 1 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 2 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 2 |tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 4 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 4 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 6 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 6 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 8 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 8 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 10 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 10 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 12 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 12 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 14 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 14 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "THREADS = 16 | 10 TIMES | BOARD = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 16 | tee -a resultados.txt
echo | tee -a resultados.txt
