LETTERS = ('a'..'z')

def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, sizes|
    sizes[cleanup(word).length] += 1
  end
end

def cleanup(word)
  clean_chars = []
  word.chars.each do |char|
    clean_chars << char if LETTERS.include?(char.downcase)
  end
  clean_chars.join
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
