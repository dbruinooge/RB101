array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# I think that it will print:
# Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo
# on separate lines.
# The values appended to array2 on line 3 point to String objects
# that were initialized on line 1 and placed as elements in array1.
# So the mutating method String#upcase! on line 4
# changes the objects that the elements in array2 point to.

# I can see how this behavior might cause problems by
# changing objects unintentionally.
# It may be better sometimes to create new objects when making changes
# rather than changing the original object.
