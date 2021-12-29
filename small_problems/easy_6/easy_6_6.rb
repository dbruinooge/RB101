def merge(array1, array2)
  merged_array = []
  array1.each { |element| merged_array << element }
  array2.each { |element| merged_array << element }
  merged_array.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
