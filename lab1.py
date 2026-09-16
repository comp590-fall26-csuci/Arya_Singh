def fibonacci_recursive(number):
	if number <= 1:
		return number
	return fibonacci_recursive(number-1) + fibonacci_recursive(number-2)

def write_fibonacci(count, filename):
	with open(filename, "w") as output_file:
		for number in range(count):
			value = fibonacci_recursive(number)
			output_file.write(str(value) + "\n")

write_fibonacci(25, "output/fibonacci.txt")
