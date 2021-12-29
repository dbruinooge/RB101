# First solution

# def include?(arr, value)
#   arr.each { |element| return true if element == value }
#   false
# end

# Further exploration

def include?(arr, value)
  !arr.none?(value)
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
