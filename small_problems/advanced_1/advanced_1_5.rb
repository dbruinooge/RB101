def rotate(matrix, degrees)
  case degrees
  when 360
    matrix
  when 90
    result = []
    matrix.first.size.times do |column|
      subarray = []
      matrix.size.times do |row|
        subarray << matrix[row][column]
      end
      result << subarray.reverse
    end
    result
  when 180
    matrix.map { |row| row.reverse }
  when 270
    result = []
    matrix.first.size.times do |column|
      subarray = []
      matrix.size.times do |row|
        subarray << matrix[row][column]
      end
      result << subarray
    end
    result.reverse
  else
    "Error: Invalid argument"
  end
end

def print_matrix(matrix)
  matrix.each do |row|
    print row
    puts
  end
end
  
matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

puts "original: "
print_matrix(matrix1)
puts "90 degrees: "
print_matrix(rotate(matrix1, 90))
puts "180 degrees: "
print_matrix(rotate(matrix1, 180))
puts "270 degrees: "
print_matrix(rotate(matrix1, 270))
puts "360 degrees: "
print_matrix(rotate(matrix1, 360))

puts
puts "original: "
print_matrix(matrix2)
puts "90 degrees: "
print_matrix(rotate(matrix2, 90))
puts "180 degrees: "
print_matrix(rotate(matrix2, 180))
puts "270 degrees: "
print_matrix(rotate(matrix2, 270))
puts "360 degrees: "
print_matrix(rotate(matrix2, 360))
