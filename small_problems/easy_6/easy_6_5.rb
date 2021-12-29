# Further exploration

def reverse(arr)
  arr.inject([]) do |reversed_arr, element|
    reversed_arr.insert(0, element)
  end
end

# def reverse(arr)
#   arr.each_with_object([]) do |element, reversed_arr|
#     reversed_arr.insert(0, element)
#   end
# end

# def reverse(array)
#   reversed_arr = []
#   counter = -1
#   loop do
#     break if counter.abs > array.size
#     reversed_arr << array[counter]
#     counter -= 1
#   end
#   reversed_arr
# end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]    # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
