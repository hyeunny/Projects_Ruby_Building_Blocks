def stock_picker(array)
    buy_pos = 0
	profit_max = -1000
	while buy_pos <= array.length-2
		sell_pos = buy_pos + 1
		while sell_pos <= array.length-1
			profit = array[sell_pos] - array[buy_pos]

			if profit > profit_max
				profit_max = profit
                track_buy = buy_pos
                track_sell = sell_pos
			end

			sell_pos +=1
		end
		buy_pos +=1
	end
	return best_pos = [track_buy, track_sell]
end

p stock_picker([17,3,6,9,15,8,6,8,10,99])