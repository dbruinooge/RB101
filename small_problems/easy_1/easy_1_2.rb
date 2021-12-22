# Write a method that takes one integer argument,
# which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

def modulo_odd?(num)
  num % 2 != 0
end

puts modulo_odd?(0) == false
puts modulo_odd?(-1) == true
puts modulo_odd?(10) == false
puts modulo_odd?(1) == true

def remainder_odd?(num)
  num % 2 != 0
end

puts remainder_odd?(0) == false
puts remainder_odd?(-1) == true
puts remainder_odd?(-10) == false
puts remainder_odd?(1) == true
