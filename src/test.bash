echo "threads = 1 | 10 times | board = 10" | tee resultados.txt 
seq 10 | xargs -Iz ./othello -c -t -b 10 -s -n 1 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 2 | 10 times | board = 10" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 10 -s -n 2 | tee -a resultados.txt
echo | tee -a resultados.txt

echo "threads = 1 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 1 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 2 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 2 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 4 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 4 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 6 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 6 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 8 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 8 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 10 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 10 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 12 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 12 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 14 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 14 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 16 | 10 times | board = 100" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 100 -s -n 16 | tee -a resultados.txt
echo | tee -a resultados.txt

echo "threads = 1 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 1 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 2 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 2 |tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 4 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 4 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 6 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 6 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 8 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 8 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 10 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 10 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 12 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 12 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 14 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 14 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 16 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 16 | tee -a resultados.txt
echo | tee -a resultados.txt
