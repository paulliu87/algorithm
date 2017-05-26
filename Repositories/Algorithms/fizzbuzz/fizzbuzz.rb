

def fizzbuzz(num)
	result = []
	for i in (1..num) do
		if (i % 3 == 0) && (i % 5 == 0)
			result .push(["fizzbuzz"])
		elsif (i % 3 == 0)
			result.push("fizz")
		elsif (i % 5 == 0)
			result.push("buzz")
		else
			result.push(i.to_s)
		end
	end
	return result
end