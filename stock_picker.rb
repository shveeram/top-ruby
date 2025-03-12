def stock_picker(stock_prices)
  max_profit = 0
  best_buy_sell_period = []
  stock_prices.each_with_index do |buy_price, buy_day|
    best_sell_price = stock_prices.select.with_index { |sell_price,sell_day| sell_day > buy_day }.max.to_i
    best_sell_price_day = stock_prices.index{ |price| price == best_sell_price }
    profit =  best_sell_price - buy_price
    if profit > max_profit
      max_profit = profit
      best_buy_sell_period = [buy_day, best_sell_price_day]
    end
  end
  best_buy_sell_period
end