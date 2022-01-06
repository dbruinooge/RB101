# def transpose(matrix)
#   results = []
#   subarr = 0
#   position = 0
#   position.upto(2) do |pos|
#     new_subarr = []
#     subarr.upto(2) do |sub|
#       new_subarr << matrix[sub][pos]
#     end
#     results << new_subarr
#   end
#   results
# end

# Further exploration: in-place transpose

def transpose(matrix)
  0.upto(1) do |x|
    0.upto(2) do |y|
      next if y == 0 && x == 1
      matrix[x][y], matrix[y][x] = matrix[y][x], matrix[x][y]
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p matrix

transpose(matrix)

p matrix

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
