# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
end

def max_2_sum arr
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  # YOUR CODE HERE
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
# YOUR CODE HERE
end
