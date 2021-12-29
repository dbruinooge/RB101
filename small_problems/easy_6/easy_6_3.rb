def find_fibonacci_index_by_length(length)
  current = 1
  previous = 1
  counter = 2
  loop do
    return counter if current.to_s.size == length
    current, previous = current + previous, current
    counter += 1
  end
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
