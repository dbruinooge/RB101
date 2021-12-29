# def word_cap(words)
#   words.split.map(&:capitalize).join(" ")
# end

# Further explanation - no #capitalize

def capitalize(word)
  word = word.clone
  word[0] = word[0].upcase
  counter = 1
  while counter < word.length
    word[counter] = word[counter].downcase
    counter += 1
  end
  word
end

def word_cap(words)
  words.split.map { |word| capitalize(word) }.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
