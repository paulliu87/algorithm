require_relative 'valid_palindrome'

describe "is_palindrome" do 
	it "take a empty string and return true" do
		string = ""
		expect(is_palindrome(string)).to equal true
	end

	it "take a palindrom string and return true" do
		string = "civic"
		expect(is_palindrome(string)).to equal true
	end

	it "take a non-palindrome string and return false" do
		string = "civil"
		expect(is_palindrome(string)).to equal false
	end
end