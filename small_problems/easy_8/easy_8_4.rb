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
    substring_arr << string[0..index]
  end
  substring_arr
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
