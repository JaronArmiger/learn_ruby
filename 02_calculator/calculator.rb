def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(arr)
    total = 0
    while arr != []
    	total += arr.pop
    end
    total
end

def multiply(arr)
	total = 1
    while arr != []
    	total *= arr.pop
    end
    total
end

def power(a,b)
	a**b
end

def factorial(x)
    if x == 0
    	fac = 0
    else
    	fac = 1
    	while x != 0
            fac = fac * x
            x = x - 1
    	end
    end
	fac
end


