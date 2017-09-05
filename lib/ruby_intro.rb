# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |element|
    sum += element
  }
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!
  
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
      firstLargest = arr[arr.length-1]
      secondLargest = arr[arr.length-2]
      return (firstLargest+secondLargest)
  end 
end

def sum_to_n? arr, n
  

  for i in 0...arr.length-1
  
    for j in i+1...arr.length
    
    if arr[i]+arr[j] == n
      return arr[i]+arr[j] == n
    end
  
  
    end
  
  end
  
  return false
  
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if s.empty?
    return false
  end
  
  letter = s[0].upcase
  
  if !letter.match(/[A-Z]/)
    return false
  elsif (letter.match(/[^AEIOU]/))
    return true
  else
    return false
  end
  
  

  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if s.empty?
    return false
  elsif s.delete('01') != ''
    return false
  else
    binary = s.to_i(2)
    return binary % 4 == 0
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE

  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0 || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    raise ArgumentError if new_isbn.length == 0
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    raise ArgumentError if new_price <= 0
    @price = new_price
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end

end
