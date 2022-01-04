NUMS = { 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
         'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', 'ten' => '10' }

# First attempt. This doesn't really work because it's tailored
# to the test case. It wouldn't work with punctuation other than periods.

# def word_to_digit(string)
#   array = string.split
#   array.each_with_index do |word, idx|
#     if NUMS.keys.include?(word.delete_suffix('.')) &&
#       word[-1] == '.'
#       array[idx] = NUMS[word.delete_suffix('.')].to_s + '.'
#     elsif NUMS.keys.include?(word.delete_suffix('.'))
#       array[idx] = NUMS[word.delete_suffix('.')]
#     end
#   end
#   array.join(' ')
# end

# Second attempt, using a sequence of gsub expressions
# Problem here is that it will replace strings that form
# part of other words

# def word_to_digit(string)
#   string.gsub!('zero', '0')
#   string.gsub!('one', '1')
#   string.gsub!('two', '2')
#   string.gsub!('three', '1')
#   string.gsub!('four', '4')
#   string.gsub!('five', '5')
#   string.gsub!('six', '6')
#   string.gsub!('seven', '7')
#   string.gsub!('eight', '8')
#   string.gsub!('nine', '9')
#   string
# end

# Using regex provided in hint

# def word_to_digit(string)
#   NUMS.keys.each do |word|
#     string.gsub!(/\b#{word}\b/i, NUMS[word])
#   end
#   string
# end

# Further exploration:
#  - case insensitive
#  - remove spaces between created numbers
#  - format phone numbers

def word_to_digit(string)
  sentences = string.split('. ')
  sentences.map do |sentence|
    cleanup_digits(sentence)
  end.join ('. ')
end

def cleanup_digits(sentence)
  results = []
  sequence = []
  sentence.split.each do |word|
    if NUMS.include?(word.downcase)
      sequence << NUMS[word.downcase]
    else
      if sequence.size > 0
        results << format(sequence)
        sequence = []
      end
      results << word
    end
    
  end
  results << format(sequence) if sequence.size > 0
  results.join(' ')
end

def format(numbers)
  formatted_numbers = ''
  if numbers.size == 10
    return "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
  else
    return numbers.join
  end
end

p word_to_digit("Hi there, five One five one. ")
p word_to_digit("My number is one two three four five SIX sevEn eight nine nine. Call me soon.")
