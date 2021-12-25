require 'date'

year = Date.today.year

print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

years_to_retire = retire_age - current_age

puts
puts "It's #{year}. You will retire in #{year + years_to_retire}."
puts "You have only #{years_to_retire} years of work to go!"
