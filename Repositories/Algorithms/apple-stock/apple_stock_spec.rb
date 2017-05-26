require_relative 'apple_stock.rb'

describe "get_max_profit" do
	it "takes an array and return an integer" do
		stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
		expect(get_max_profit(stock_prices_yesterday)).to eq(6)
	end

	it 'takes no param and raise an exception' do
		stock_prices_yesterday = nil
		expect {get_max_profit(stock_prices_yesterday)}.to raise_error(Exception)
	end

	it 'takes an array with only one price and raise an Indexerror' do
		stock_prices_yesterday = [1]
		expect {get_max_profit(stock_prices_yesterday)}.to raise_error(IndexError)
	end
end