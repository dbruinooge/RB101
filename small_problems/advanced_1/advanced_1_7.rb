def merge(a, b)
  results = []
  a_idx = 0
  b_idx = 0
  while results.size < a.size + b.size
    if a_idx == a.size
      results << b[b_idx..-1]
      break
    elsif b_idx == b.size
      results << a[a_idx..-1]
      break
    end
    if a[a_idx] <= b[b_idx]
      results << a[a_idx]
      a_idx += 1
    else
      results << b[b_idx]
      b_idx += 1
    end
  end
  results.flatten
end

# LS solution:

# def merge(arr1, arr2)
#   results = []
#   idx2 = 0
#   arr1.each do |num|
#     while idx2 < arr2.size && arr2[idx2] <= num
#       results << arr2[idx2]
#       idx2 += 1
#     end
#     results << num
#   end
#   results.concat(arr2[idx2..-1])
# end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

