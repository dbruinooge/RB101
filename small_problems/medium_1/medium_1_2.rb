def rotate_rightmost_digits(number, digits)
  number_array = number.to_s.chars
  rotated_part = rotate_array(number_array.last(digits))
  result = number_array[0, number_array.size - digits] + rotated_part
  result.join.to_i
end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
