def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(numbers)
	total = 0
	numbers.each do |x|
		total += x
	end
	total
end

def multiply(*numbers)
	numbers.inject(1){|product,n| product * n}
end

def power(a,b)
	a**b
end

def factorial(a)
	if a == 0
		return 1
	end
	return a*factorial(a-1)
end