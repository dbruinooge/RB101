# Trying LS solution

# def print_lines(grid_size, distance_from_center)
#   number_of_stars = grid_size - (2 * distance_from_center)
#   stars = "*" * number_of_stars
#   puts stars.center(grid_size)
# end

# Further exploration: print outline only

def print_lines(grid_size, distance_from_center)
  number_of_stars = grid_size - (2 * distance_from_center)
  stars = star_string(number_of_stars, grid_size)
  puts stars.center(grid_size)
end

def star_string(number_of_stars, grid_size)
  middle_spaces = number_of_stars - 2
  string = ''
  if middle_spaces <= 0
    string = "*"
  else
    string = "*" + (" " * middle_spaces) + "*"
  end
  string
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |i| print_lines(grid_size, i) }
  1.upto(max_distance) { |i| print_lines(grid_size, i) }
end

diamond(19)

# my original solution to the first problem:

# def diamond(n)
#   stars = 1
#   while n >= stars
#     spaces = (n - stars) / 2
#     puts (" " * spaces) + ('*' * stars)
#     stars += 2
#   end
#   stars = n - 2
#   while stars >= 1
#     spaces = (n - stars) / 2
#     puts (" " * spaces) + ('*' * stars)
#     stars -= 2
#   end
# end
