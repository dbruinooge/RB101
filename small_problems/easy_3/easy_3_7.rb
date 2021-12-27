# Solution #1:

def oddities(numbers)
  alternating_numbers = []
  numbers.each_with_index do |num, idx|
    alternating_numbers << num if idx.even?
  end
  alternating_numbers
end

# Solution #2

# def oddities(numbers)
#   alternating_numbers = []
#   counter = 0
#   while counter < numbers.size
#     alternating_numbers << numbers[counter]
#     counter += 2
#   end
#   alternating_numbers
# end

# Solution #3

# def oddities(numbers)
#   alternating_numbers = []
#   count = 0
#   loop do
#     break if count >= numbers.size
#     alternating_numbers << numbers[count]
#     count += 2
#   end
#   alternating_numbers
# end

# Solution #4

# def oddities(numbers)
#   numbers.select.with_index { |_, idx| (idx).even?}
# end

def evenies(numbers)
  alternating_numbers = []
  numbers.each_with_index do |num, idx|
    alternating_numbers << num if idx.odd?
  end
  alternating_numbers
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# p evenies([]) == []
# p evenies([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
