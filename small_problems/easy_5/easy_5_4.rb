def reverse_word(word)
  first = word[0]
  word[0] = word[-1]
  word [-1] = first
  word
end

def swap(words)
  words.split.map { |w| reverse_word(w) }.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Further exploration

# The proposed swap_first_last_characters wouldn't work because
# the characters passed to the method are assigned instance
# variables in the method within that method's scope. Reassigning
# those instance variables does not affect values outside the method
# such as the first/last characters passed in.
