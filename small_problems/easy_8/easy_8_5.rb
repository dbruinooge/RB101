# Further exploration:
#   modified leading_substrings method to ignore non-alphanumeric characters
#   modified palindromes method to ignore case

def palindromes(string)
  substrings(string).select do |substring|
    substring.length >= 2 && (substring.downcase == substring.downcase.reverse)
  end
end

def substrings(string)
  substring_arr = []
  0.upto(string.size - 1) do |index|
    substring_arr << leading_substrings(string[index..-1])
  end
  substring_arr.flatten
end

def leading_substrings(string)
  substring_arr = []
  0.upto(string.size - 1) do |index|
    substring_arr << string[0..index].delete('^a-zA-Z0-9')
  end
  substring_arr.uniq
end

print palindromes('Dad%Mom!dad')

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
