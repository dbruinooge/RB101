# my first solution

# def fibonacci(n)
#   return n if n <= 2
#   fib = 0
#   oneback = 1
#   twoback = 1
#   3.upto(n) do
#     helper = twoback
#     twoback = oneback
#     fib = helper + oneback
#     oneback = fib
#   end
#   fib
# end

# trying a version with an array

# def fibonacci(n)
#   fib_arr = [1, 1]
#   fib_arr << fib_arr[-1] + fib_arr[-2] until fib_arr.size >= n
#   fib_arr[-1]
# end

# Trying the LS solution after glancing at it:

def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci(150)

# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
