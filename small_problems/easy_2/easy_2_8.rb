def get_sum(number)
  (1..number.to_i).inject(:+)
end

def get_product(number)
  (1..number.to_i).inject(:*)
end

number = ''
loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp
  break if number == number.to_i.to_s && number.to_i > 0
  puts "That's not a valid number."
end

choice = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp
  break if choice == 's' || choice == 'p'
  puts "That's not a valid choice."
end

case choice
when 's'
  puts "The sum of the integers between 1 and #{number} is #{get_sum(number)}."
when 'p'
  puts "The product of the integers between 1 and #{number} " \
       "is #{get_product(number)}."
end
