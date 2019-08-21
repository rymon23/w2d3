require "byebug"

class Array
  def my_uniq
    new_arr = []
    self.each do |el| 
      new_arr << el if !new_arr.include?(el)
    end
    new_arr
  end

  def my_two_sum
    results = []
    self.each_with_index do |el_1, i|
      self.each_with_index do |el_2, j|
        results << [i, j] if el_1 + el_2 == 0 && i < j
      end
    end
    results
  end

end


      # expect(my_transpose( [[0, 1, 2], [3, 4, 5], [6, 7, 8]] ) ).to eq( [[0, 3, 6], [1, 4, 7], [2, 5, 8]] )


def my_transpose(arrays)
  transposed = []
  i = 0
  while i < arrays.length
    subzip = []
    arrays.each do |sub|
      subzip << sub[i]
    end
    transposed << subzip
    i += 1
  end
    transposed
  end
  

def stock_picker(stock_prices)
  current_best_date = []
  max_profit = 0

  (0...stock_prices.length).each do |buy_day|
    (0...
    stock_prices.length).each do |sell_day|
      if sell_day > buy_day
        profit = (stock_prices[sell_day] - stock_prices[buy_day])

        if profit > max_profit
          max_profit = profit
          current_best_date = [buy_day, sell_day]
        end
      end
    end
  end
  current_best_date 
end