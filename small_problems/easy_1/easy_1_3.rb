# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.

def digit_list(integer)
  integer.to_s.chars.map { |c| c.to_i }
end

p digit_list(937) == [9, 3, 7]

# Rubocop tells me to pass &:to_i to chars.map! instead of a block.
# I left my original solution to show how I did this exercise.
