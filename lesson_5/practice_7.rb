# Given this code, what would be the final values of a and b?
# Try to work this out without running the code.

a = 2 # 2
b = [5, 8] # [5, 8]
arr = [a, b] # [2, [5, 8]]

arr[0] += 2 # [4, [5, 8]]
arr[1][0] -= a # [4, [3, 8]]

puts "a is #{a}"
puts "b is #{b}"
p "arr is #{arr}"

# I think that when the element at index 0 of arr is incremented by 2,
# the value of a doesn't change because a points at an integer 2
# which is immutable.

# However, b points not to an immutable integer but to an array, which is mutable.
# When index 0 of that array is reassigned to 3, b changes because
# the array object that it points to has changed.

