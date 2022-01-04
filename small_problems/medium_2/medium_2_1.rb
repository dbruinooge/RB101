# Further exploration: added punctuation to end of sentence

def longest_sentence(filename)
  file = File.open(filename)
  full_text = file.read.gsub("\n", " ")
  
  sentences = full_text.split('.')
  sentences.map! { |sentence| sentence.split('!') }.flatten!
  sentences.map! { |sentence| sentence.split('?') }.flatten!
  sentences.map! { |sentence| sentence.strip }
  
  words_in_longest = 0
  longest_sentence = ''
  sentences.each do |sentence|
    if sentence.split.size > words_in_longest
      words_in_longest = sentence.split.size
      longest_sentence = sentence
    end
  end
  add_punctuation!(longest_sentence, full_text)
  
  puts "The longest sentence is:"
  puts
  puts longest_sentence
  puts
  puts "There are #{words_in_longest} words in the longest sentence."
end

def add_punctuation!(sentence, full_text)
  index = full_text.index(sentence) + sentence.length
  next_character = full_text[index]
  if ['.', '?', '!'].include?(next_character)
    sentence << next_character
  end
end

longest_sentence("frankenstein.txt")

# Further exploration: method to find longest paragraph

def longest_paragraph(filename)
  file = File.open(filename)
  full_text = file.read
  paragraphs = full_text.split("\n\n")
  longest_paragraph = ''
  words_in_longest = 0
  paragraphs.each do |para|
    if para.length > words_in_longest
      longest_paragraph = para
      words_in_longest = para.length
    end
  end
  puts "The longest paragraph is:"
  puts
  puts longest_paragraph
  puts
  puts "Words in longest paragraph: #{words_in_longest}"
end

longest_paragraph('frankenstein.txt')

# Further exploration: method to find longest word

def longest_word(filename)
  file = File.open(filename)
  full_text = file.read.gsub("\n", " ")
  
  words = full_text.split
  letters_in_longest = 0
  longest_word = ''
  
  words.each do |word|
    if word.size > letters_in_longest
      letters_in_longest = word.size
      longest_word = word
    end
  end

  puts "The longest word is:"
  puts
  puts longest_word
  puts
  puts "There are #{letters_in_longest} letters in the longest word."
end

longest_word('gettysburg_address.txt')
