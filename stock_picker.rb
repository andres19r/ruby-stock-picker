
def stock_picker(prices)
  count = prices.size - 2
  max = 0
  picker = [0,0]
  for i in 0..count
    value = prices[i]
    prices[i+1..-1].each_with_index do |price|
      sell = price - value
      if sell > max
        max = sell
        picker[0] = value
        picker[1] = price
      end
    end
  end
  [prices.index(picker[0]),prices.index(picker[1])]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12
p stock_picker([5,6,7,2,15,1,10])
#=> [3,4]
