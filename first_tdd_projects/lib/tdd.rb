

def my_uniq(array)
    arr = []
    array.each do |ele|
        arr << ele unless arr.include?(ele)
    end
    arr
end

class Array 
  def two_sum 
    pairs = []
    (0...self.length).each do |i1|
      (i1+1...self.length).each do |i2|
        pairs << [i1, i2] if self[i1] + self[i2] == 0 
      end
    end
    pairs 
  end
end


def my_transpose(matrix)
    transposed = Array.new(matrix.length) {Array.new()}
    (0...matrix.length).each do |i|
        matrix.each do |sub_arr|
            transposed[i] << sub_arr[i]
        end
    end
    transposed
end

def stock_picker(prices)
  pairs = []
  highest_profit = 0

  (0...prices.length).each do |i1|
    (i1 +1...prices.length).each do |i2|
        profit = prices[i2] - prices[i1]
        if profit > highest_profit
            pairs = [i1, i2]
            highest_profit = profit
        end
    end
  end
  pairs
end
