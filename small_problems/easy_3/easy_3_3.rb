puts "Please write a word or multiple words:"
words = gets.chomp

characters = words.delete(" ").size

if characters == 1
  puts "There is 1 character in \"#{words}\"."
else
  puts "There are #{characters} characters in \"#{words}\"."
end
