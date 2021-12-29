# def interleave(arr1, arr2)
#   combined_arr = []
#   counter = 0
#   while counter < arr1.size
#     combined_arr << arr1[counter]
#     combined_arr << arr2[counter]
#     counter += 1
#   end
#   combined_arr
# end

# Further exploration using Array#zip

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
