# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# My solution:

def stringy(num)
  string = ''
  counter = 1
  while counter <= num
    string << (counter % 2).to_s
    counter += 1
  end
  string
end

# Attempt to code LS solution after reading it:

def ls_stringy(num, starter=1)
  numbers = []
  num.times do |index|
    case starter
    when 1
      numbers << (index.even? ? 1 : 0)
    when 0
      numbers << (index.even? ? 0 : 1)
    end
  end
  numbers.join
end

puts "My solution:"
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts "LS solution:"
puts ls_stringy(6) == '101010'
puts ls_stringy(9) == '101010101'
puts ls_stringy(4) == '1010'
puts ls_stringy(7) == '1010101'
puts ls_stringy(5, 0) == '01010'
puts ls_stringy(8, 0) == '01010101'
