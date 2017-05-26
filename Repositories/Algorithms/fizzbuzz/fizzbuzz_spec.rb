require_relative "fizzbuzz.rb"

describe "fizzbuzz" do
	it "takes a interger and return a array" do
		n = 3
		result = fizzbuzz(n)
		expect(result.class).to eq(Array)
	end

	it "gives a fizz at the end" do
		n = 3
		result = fizzbuzz(n)
		expect(result.last).to eq("fizz")
	end


	it "give a five and the last one should be buzz" do
		n = 0
		result	= fizzbuzz(n)
		expect(result.last).to eq("buzz")
	end

 end