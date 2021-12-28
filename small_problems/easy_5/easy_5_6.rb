def word_sizes(string)
  string.split.each_with_object({}) do |word, sizes|
    if sizes.key?(word.length)
      sizes[word.length] += 1
    else
      sizes[word.length] = 1
    end
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
