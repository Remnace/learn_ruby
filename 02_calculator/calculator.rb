#write your code here
def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(numArray)
	sum = 0
	numArray.each {
		|i| sum = sum + i
	}
	return sum
end

def multiply(array)
	product = 1
	array.each {
		|i| product = product * i
	}
	return product
end

def power(a, b)
	return a**b
end

def factorial(a)
	product = 1
	int_in = a
	if int_in == 0 then
		return 0
	end
	while int_in != 0 do
		product *= int_in
		int_in -= 1
	end
	return product
end