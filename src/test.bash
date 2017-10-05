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


echo "threads = 1 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 1 | tee -a resultados.txt
echo | tee -a resultados.txt
echo "threads = 2 | 10 times | board = 200" | tee -a resultados.txt
seq 10 | xargs -Iz ./othello -c -t -b 200 -s -n 2 |tee -a resultados.txt
echo | tee -a resultados.txt
