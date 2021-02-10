# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.reduce(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  newArr = arr.sort.reverse
  
  return newArr[0..1].reduce(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index do |elem, index|
    next unless arr[(index + 1)..(arr.length - 1)].include?(n - elem)
    return true
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s.match?(/\A[^aeiou\W]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.length == 0 || s.match?(/[^\d+]/))
    return false # return false if s.length is 0 OR is there is any character other than a digit in the string
  end
  
  returnVal = false
  
  begin 
    returnVal = ((s.to_i(2) % 4) == 0)
  rescue
    returnVal = false
  end
  
  return returnVal
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, 'Incorrect ISBN' unless isbn.instance_of?(String) && isbn.size > 0
    raise ArgumentError, 'Incorrect price' unless (price > 0)
      
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    raise ArgumentError, 'Incorrect ISBN' unless isbn.instance_of?(String) && isbn.size > 0
    @isbn = isbn
  end
  
  def price=(price)
    raise ArgumentError, 'Incorrect price' unless (price > 0)
    @price = price
  end
  
  def price_as_string()
    return "$#{'%.2f' % @price}"
  end
end
