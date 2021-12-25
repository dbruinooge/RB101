print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.upcase.delete_suffix('!')}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
