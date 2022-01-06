# Further exploration: optimize by skipping sorted tail elements

def bubble_sort!(array)
  1.upto(array.size - 1) do |count| 
    sorted = false
    array.each_with_index do |num, idx|
      if num > array[idx + 1]
       array[idx], array[idx + 1] = array[idx + 1], array[idx]
       sorted = true
      end
    break if idx == array.length - count - 1
    end
    break if sorted == false
  end
  array
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

p bubble_sort!([5, 3, 1, 2, 6]) == [1, 2, 3, 5, 6]
