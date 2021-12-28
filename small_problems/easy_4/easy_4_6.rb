# My first solution:

def running_total(numbers)
  result = []
  sum = 0
  numbers.each do |num|
    sum += num
    result << sum
  end
  result
end

# Simpler LS solution:

# def running_total(numbers)
#   sum = 0
#   numbers.map { |num| sum += num }
# end

# Further exploration with Enumerable#each_with_object:

# def running_total(numbers)
#   sum = 0
#   numbers.each_with_object([]) { |num, result| result << sum += num }
# end

# Further exploration with Enumerable#inject:

# def running_total(numbers)
#   result = []
#   count = 1
#   while count <= numbers.size
#     result << numbers.take(count).inject(:+)
#     count += 1
#   end
#   result
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
