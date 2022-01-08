# Further exploration: non-recursive solution

def merge_sort(array)
  return array if array.size <= 1
  divided = divide(array)
  while divided.size > 1
    divided = divided.map.with_index do|ele, idx|
      if idx == divided.size - 1 && divided.size.odd?
        ele
      elsif idx.even?
        merge(ele, divided[idx + 1])
      else
        nil
      end
    end.select { |ele| ele != nil }
  end
  divided  
end

def divide(array)
  results = []
  array.each do |ele|
    results << [ele]
  end
  results
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

p merge_sort([5, 6, 78, 2, 3, 5])
