def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(10)

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you make this work without using begin/end/until?
# Note that we're not looking to find the factors for 0 or negative numbers,
# but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

# To make it work, I used a while loop that checked if the divisor was a number greater than 0.

# Bonus 1: the purpose of number % divisor == 0 is to check whether a divisor is a factor of the number.

# Bonus 2: the purpose of the "factors" line is to return the array containing all factors of the argument/parameter.
