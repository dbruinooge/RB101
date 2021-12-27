# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Docs state that the array can be modified during iteration. I think that this outputs 1 2 3 4 and then returns an empty array.
# I tried it in irb and the result was unexpected. LS explanation makes sense.

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# I think this will output 1 2.
