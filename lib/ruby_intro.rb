# When done, submit this entire file to the autograder.
#Tianhong Qiu
#325003339
# Part 1

def sum arr
  result = 0
  for n in 0...arr.size
    result += arr[n]
  end
  return result
end

def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    first = arr.max
    second = arr.max(2)[1]
    result = first + second
    return result
  end
end

def sum_to_n? arr, n
  flag = false
  if arr.size == 0 or arr.size == 1
    return false
  else 
    for i in 0 ... arr.size
      rem = n - arr[i]
      if arr.include?(rem) and rem != arr[i]
        return true
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  out = "Hello, #{name}"
  return out
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  first = s[0]
  if (first =~ /[[:alpha:]]/ ) != 0 
    return false
  elsif ['a','e','i','o','u','A','E','I','O',"U"].include?(first) 
    return false
  else 
    return true
  end
end

def binary_multiple_of_4? s
  if s == '0'
    return true
  end
  if /^[10]*00$/.match(s) != nil
    return true
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%0.2f" % @price
  end
end
