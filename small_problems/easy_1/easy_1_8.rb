def average(numbers)
  sum = 0
  numbers.each { |n| sum += n }
  sum / numbers.length
end

# Attempting to code the LS solution on one line, and return answer as float
def average2(numbers)
  numbers.reduce(:+).to_f / numbers.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts average2([1, 6]) == 3.5 # integer division: (1 + 6) / 2 -> 3
puts average2([1, 2, 3, 4]) == 2.5
