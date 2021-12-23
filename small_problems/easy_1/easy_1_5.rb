# Write a method that takes one argument, a string,
# and returns a new string with the words in reverse order.

def reverse_sentence(string)
  new_string = ''
  word_array = string.split.reverse
  word_array.each_with_index do |word, index|
    new_string << word
    new_string << ' ' if index < word_array.length - 1
  end
  new_string
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
