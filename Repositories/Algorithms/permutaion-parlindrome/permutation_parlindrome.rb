def permutation_parlindrome(string)
	remaid_chars = Set.new
	for i in 0...string.length
		char = string[i]
		if remaid_chars.include? char
			remaid_chars.delete(char)
		else
			remaid_chars.add(char)
		end
	end
	return remaid_chars.length < 2
end