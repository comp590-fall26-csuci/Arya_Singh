def fibonacci_iterative(count, filename):
	first = 0
	second = 1

	with open(filename, "w") as output_file:
		for _ in range(count):
			output_file.write(str(first) + "\n")
			first, second = second, first+second
fibonacci_iterative(25, "output/fibonacci.txt")
