numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i

puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i

puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i

puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i

puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i

puts "==> Enter the 6th number:"
num = gets.chomp.to_i

if numbers.include?(num)
  puts "The number #{num} appears in #{numbers}."
else
  puts "The number #{num} does not appear in #{numbers}."
end
