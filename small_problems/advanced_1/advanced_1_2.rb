def star(n)
  top_lines(n)
  puts '*' * n
  bottom_lines(n)
end

def top_lines(n)
  left_spaces = 0
  middle_spaces = (n / 2) - 1
  (n / 2).times do 
    puts ' ' * left_spaces + '*' + ' ' * middle_spaces + '*' + ' ' * middle_spaces + '*'
    left_spaces += 1
    middle_spaces -= 1
  end
end

def bottom_lines(n)
  left_spaces = (n / 2) - 1
  middle_spaces = 0
  (n / 2).times do 
    puts ' ' * left_spaces + '*' + ' ' * middle_spaces + '*' + ' ' * middle_spaces + '*'
    left_spaces -= 1
    middle_spaces += 1
  end
end

# Trying LS solution

# def print_line(n, distance)
#   number_of_spaces = distance - 1
#   spaces = ' ' * number_of_spaces
#   line = Array.new(3, '*').join(spaces)
#   puts line.center(n)
# end

# def star(n)
#   max_distance = n / 2
#   max_distance.downto(1) do |i|
#     print_line(n, i)
#   end
#   puts '*' * n
#   1.upto(max_distance) do |i|
#     print_line(n, i)
#   end
# end
