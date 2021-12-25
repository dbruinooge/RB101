def rectangle_area(length, width)
  (length * width).floor(2)
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_sqm = rectangle_area(length, width)
area_sqft = (area_sqm * 10.7639).floor(2)

puts "The area of the room is #{area_sqm} square meters " \
     "(#{area_sqft} square feet)."
