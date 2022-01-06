def sum_square_difference(num)
  square_sum(num) - sum_squares(num)
end

def sum_squares(num)
  sum = 0
  1.upto(num) do |i|
    sum += i**2
  end
  sum
end

def square_sum(num)
  ((1..num).to_a.sum)**2
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
