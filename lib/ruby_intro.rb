# Part 1

# Input: arr - array of integers
# Output: sum of arr's elements
# Notes: The sum method for arrays returns 0 when the array is empty, so don't need to add a conditional statement.
def sum arr
  return arr.sum
end

# Input: arr - array of integers
# Output: Sum of arr's two largest elements
# Logic:
# => If arr is empty return 0.
# => Else if arr has only one element, return that element.
# => Else find the max element in arr, remove it (to prevent it from being chosen again), find the next max element and output their sum.
def max_2_sum arr
  return arr.empty? ? 0 : arr.length == 1 ? arr[0] : arr.delete_at(arr.index(arr.max)) + arr.max
end

# Input: arr - array of integers, n - additional integer
# Output: boolean, true if any two elements in arr sum to n
# Logic:
# => If arr empty or contains one element, return false
# => Else create new array with all possible combinations of numbers in sets of 2 from arr. Select tuples that add up to n. If any two numbers add up to n, this array will not be empty so return true.
def sum_to_n? arr, n
  return arr.empty? ? false : arr.length == 1 ? false : arr.combination(2).to_a.select {|x| x[0] + x[1] == n}.empty? ? false : true
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

# Input: s - string
# Output: boolean - true if s starts with consonant
# Logic:
# => If s is empty, return false.
# => Else if the first letter of s is NOT a special character or a vowel (case-insensitive), return true.
def starts_with_consonant? s
  return s.empty? ? false : s[0] !~ /[\W]|A|E|I|O|U/i
end

# Input: s - string
# Output: boolean - true if s represents a binary number divisible by 4
# Logic:
# => If s is empty, return false.
# => Else if s only contains 0's and 1's, check if it's divisible by 4 using modulo operator, return true if it is.
def binary_multiple_of_4? s
  return s.empty? ? false : s =~ /^[0|1]+$/ ? s.to_i()%4 == 0 : false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    # Invalid inputs: If isbn value is empty or price is equal to or less than zero, raise ArgumentError
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
  end
  
  # Getters
  attr_reader :isbn
  attr_reader :price
  
  # Setters
  attr_writer :isbn
  attr_writer :price
  
  # Output: return price represented as $##.##
  # sprintf formats price to two decimal places
  def price_as_string()
    return "$#{sprintf("%.2f",(price))}"
  end
  
end
