require "pry-byebug"

# stock_picker([17,3,6,9,15,8,6,1,10])
 # => [1,4]  # for a profit of $15 - $3 == $12


def stock_picker(list_prices)
  lowest = { price: Float::INFINITY, day: nil }
  highest = { price: -Float::INFINITY, day: nil } 
  list_prices.each_with_index do |price, index|
    if highest[:price] < price
      highest[:price] = price
      highest[:day] = index
    end
    if lowest[:price] > price 
      lowest[:price] = price
      lowest[:day] = index
    end
  end
  results = [lowest[:day], highest[:day]]
  binding.pry
  p results
end

stock_picker([17,3,6,9,15,8,6,1,10])