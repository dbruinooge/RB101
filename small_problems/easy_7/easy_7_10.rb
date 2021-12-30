def penultimate(string)
  string.split[-2]
end

def middle_word(string)
  return '' if string.empty?
  string.split[string.split.length / 2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p middle_word('Launch School is great!')
p middle_word('Words are any sequence of non-blank characters')
p middle_word('Hello')
p middle_word('')
