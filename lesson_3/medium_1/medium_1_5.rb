# What's wrong with the code? How would you fix this so that it works?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

def fib2(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end


# The problem is that the limit variable is not within the scope of the fib method.
# I would fix it so that the limit variable is passed to the method as an argument.

result = fib2(0, 1, limit)
puts "result is #{result}"
