# Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# The main difference is that the first method will append the new element by
# mutating the array passed to the method as an argument.
# The second method does not mutate the original array, but rather initializes a new array specific to the method
# equal to the array passed to the method with the new element appended, and then returns the new array.
# In both, the leading element of the array is removed if the size of the array exceeds max_buffer_size.

# I'm not sure if the first method is problematic. It could be said that it both has side effects
# (mutates the original array and removes leading elements if necessary)
# and returns a meaningful value (the mutated array).
