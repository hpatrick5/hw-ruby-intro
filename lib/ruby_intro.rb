# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return arr.empty? ? 0 : arr.length == 1 ? arr[0] : arr.delete_at(arr.index(arr.max)) + arr.delete_at(arr.index(arr.max))
end

def sum_to_n? arr, n
  return arr.empty? ? false : arr.length == 1 ? false : arr.combination(2).to_a.select {|x| x[0] + x[1] == n}.empty? ? false : true
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s.empty? ? false : s[0] !~ /[\W]|A|E|I|O|U/i
end

def binary_multiple_of_4? s
  return s.empty? ? false : s =~ /^[0|1]+$/ ? s.to_i()%4 == 0 : false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end
  
  attr_reader :isbn
  attr_reader :price
  
  attr_writer :isbn
  attr_writer :price
  
end
