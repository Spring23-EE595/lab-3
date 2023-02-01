g++ lab3.cpp -o code.o
./code.o

for i in `seq 1 2`
do
    diff output_m$i.txt output_golden.txt > result$i.txt
    if [ -s result$i.txt ]
	then
		echo "Method $i: Test Failed!"

	else
		echo "Method $i: Test Passed!"
	fi
	rm result$i.txt
done

rm code.o