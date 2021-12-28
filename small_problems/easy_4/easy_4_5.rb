# First solution:

# def multisum(number)
#   sum = 0
#   for i in (1..number)
#     sum += i if i % 3 == 0 ||
#                 i % 5 == 0
#   end
#   sum
# end

# Further exploration using Enumerable#inject

def multisum(number)
  multiples = []
  1.upto(number) do |num|
    multiples << num if num % 3 == 0 ||
                        num % 5 == 0
  end
  multiples.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
