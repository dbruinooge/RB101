# def leading_substrings(string)
#   substring_arr = []
#   string.length.times do |count|
#     substring_arr << string[0..count]
#   end
#   substring_arr
# end

# Using #upto

def leading_substrings(string)
  substring_arr = []
  0.upto(string.size - 1) do |index|
    substring_arr << string[0..index]
  end
  substring_arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
