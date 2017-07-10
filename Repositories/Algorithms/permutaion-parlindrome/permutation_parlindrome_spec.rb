require_relative 'permutation_parlindrome.rb'

describe "permutaion_parlindrome" do
	it "take a string and return true if any permutation of the string is parlindrome" do
		test_sample = "viicc"
		result_in_boolean = permutation_parlindrome(test_sample)
		expect(result_in_boolean).to eq(true)
	end

	it "returns false if string is not a parlindrome" do
		test_sample = "city"
		result_in_boolean = permutation_parlindrome(test_sample)
		expect(result_in_boolean).to eq(false)
	end
end