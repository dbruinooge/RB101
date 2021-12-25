# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.
# Example output: Teddy is 69 years old!

puts "Teddy is #{rand(20..200} years old!"
# originally I used rand(181) + 20.
# Rubocop said to use a range, which seems much better.

# Further exploration:

def print_name_and_age(name = "Teddy")
  puts "#{name} is #{rand(20..200)} years old!"
end

name = ''
loop do
  puts "What's your name?"
  name = gets.chomp
  break if !name.empty?
end

print_name_and_age(name)

# I get two offenses in Rubocop for unexpected tokens. Can't quite figure out what they are.