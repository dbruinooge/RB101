# def max_rotation(number)
#   length = number.to_s.chars.size
#   length.downto(1) do |count|
#     number = rotate_rightmost_digits(number, count)
#   end
#   number
# end

# Further exploration

def max_rotation(number)
  num_arr = number.to_s.chars
  num_arr.length.downto(2) do |count|
    num_arr = rotate_rightmost_elements(num_arr, count)
  end
  num_arr.join.to_i
end

def rotate_rightmost_elements(array, digits)
  array[-digits..-1] = rotate_array(array[-digits..-1])
  array
end

# End further exploration

def rotate_rightmost_digits(number, digits)
  number_array = number.to_s.chars
  rotated_part = rotate_array(number_array.last(digits))
  result = number_array[0, number_array.size - digits] + rotated_part
  result.join.to_i
end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p max_rotation(21005) == 10250
# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845
