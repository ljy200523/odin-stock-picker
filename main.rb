require "pry-byebug"

# stock_picker([17,3,6,9,15,8,6,1,10])
 # => [1,4]  # for a profit of $15 - $3 == $12

def stock_picker(list_prices)
  tired = { buy_price: Float::INFINITY, buy_day: nil, sell_price: -Float::INFINITY, sell_day: nil, profit: -Float::INFINITY }
  profit = 0
  list_prices.each_with_index do |start_price, start_day|
    list_prices.each_with_index do |end_price, end_day| # nested loop 
      # puts ("start_price = #{start_price}, start_day = #{start_day}, end_price = #{end_price}, end_day = #{end_day}")
      if ((end_price - start_price) > profit) && (end_day > start_day)
        tired[:buy_price] = start_price
        tired[:buy_day] = start_day
        tired[:sell_day] = end_day
        tired[:sell_price] = end_price
        profit = end_price - start_price
      end
    end
  end
  results = [tired[:buy_day], tired[:sell_day]]
  # binding.pry
  p results
end

stock_picker([17,3,6,9,15,8,6,1,10])