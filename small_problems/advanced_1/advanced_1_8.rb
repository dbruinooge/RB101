def merge_sort(array)
  return array if array.size <= 1
  
  middle = array.size / 2
  left = array[0...middle]
  right = array[middle..-1]
  merge(merge_sort(left), merge_sort(right))

end

def merge(arr1, arr2)
  results = []
  idx2 = 0
  arr1.each do |num|
    while idx2 < arr2.size && arr2[idx2] <= num
      results << arr2[idx2]
      idx2 += 1
    end
    results << num
  end
  results.concat(arr2[idx2..-1])
end

array = [4, 2, 3, 1, 9, 12, 100, 30, 0, 6]

p merge_sort(array)
