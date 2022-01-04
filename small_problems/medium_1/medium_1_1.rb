# My solution:

# def rotate_array(arr)
#   result = []
#   1.upto(arr.size - 1) do |count|
#     result << arr[count]
#   end
#   result << arr.first
# end

# Attempt to code LS solution:

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# Further exploration:

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join.to_i
end

p rotate_integer(1) == 1
p rotate_integer(12) == 21
p rotate_integer(12345) == 23451

# p rotate_string('Hi') == 'iH'
# p rotate_string('H') == 'H'
# p rotate_string('Hi there') == 'i thereH'


# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# p x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true
