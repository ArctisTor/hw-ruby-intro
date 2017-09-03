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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
