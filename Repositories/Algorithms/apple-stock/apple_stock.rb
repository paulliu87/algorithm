def get_max_profit(stock_prices_yesterday)
	if stock_prices_yesterday == nil
		raise Exception, "The stock market was closed yesterday!"
	end

	if stock_prices_yesterday.length < 2 
		raise IndexError, "The number of prices can not be less than 2!"
	end

	min_value = stock_prices_yesterday[0]
	max_profit  = stock_prices_yesterday[1] - stock_prices_yesterday[0]

	stock_prices_yesterday.each_with_index do |current_value, index| 
		if index == 0 then next end
		current_profit = current_value - min_value
		max_profit = [max_profit, current_profit].max

		min_value = [current_value, min_value].min

	end
	return max_profit
end

