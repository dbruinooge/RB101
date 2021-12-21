a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# What do each of these puts statements output?

# IndexError exception because index 7 is out of the array bounds
# "beats me". Again, index 7 is out of the array bounds but the provided default value will be printed instead.
# Again, index 7 is out of the array bounds. According to the API, this means that the provided block will be executed.
#    That block returns the square of the index provided. So in this case, it prints 49.