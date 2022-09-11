# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum_elements=0
  for loop_var in arr
    sum_elements=sum_elements+loop_var
  end
  return sum_elements
end

def max_2_sum(arr)
  # YOUR CODE HERE
  size_arr=arr.size
  first_largest=arr[0]
  second_largest=0
  loop_var=0
  if size_arr==0
    return 0
  elsif size_arr==1
    return arr[0]
  else
    arr.sort!
    return arr[size_arr-1]+arr[size_arr-2]
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  size_arr=arr.size
  result=0
  for loop_var in 0...size_arr
    for loop_var2 in loop_var+1...size_arr
      if arr[loop_var]+arr[loop_var2]==number
        result=result+1
      end
    end
  end
  if result>0
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  result="Hello, "
  return result+name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.size==0
    return false
  elsif (string[0].ord<=64 || string[0].ord>122) or (string[0].ord>90 && string[0].ord<97)
    return false
  elsif string.start_with? "a" or string.start_with? "e" or string.start_with? "i" or string.start_with? "o" or string.start_with? "u"
    return false
  elsif string.start_with? "A" or string.start_with? "E" or string.start_with? "I" or string.start_with? "O" or string.start_with? "U"
    return false
  elsif string.start_with? "0..9"
    return false
  else 
    return true
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  decimal_eq= string.to_i(2)
  if string.size==0
    return false
  elsif !(string.start_with? "0" or string.start_with? "1")
    return false
  elsif string.include? "a..z" or string.include? "A..Z"
    return false
  elsif decimal_eq %4 == 0
    return true
  else 
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn_number, price)
    raise ArgumentError if isbn_number.size==0 or price<=0
    @isbn_number=isbn_number
    @price=price
  end
  def isbn
    return @isbn_number
  end
  def isbn=(isbn_number)
    @isbn_number=isbn_number
  end
  def price
    return @price
  end
  def price=(price)
    @price= price
  end
  def price_as_string
    return "$%.2f" % @price
  end
end
