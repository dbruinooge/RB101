# puts "the value of 40 + 2 is " + (40 + 2)

# the error "no implicit conversion of Integer into String" occurs because
# this expression is attempting to concatenate an Integer (42) to a string ("The value of 40 + 2 is ").

# One solution is to place quotation marks around (40 + 2), although this will not give what is probably the intended output:

puts "the value of 40 + 2 is " + "(40 + 2)"

# A better solution is to convert 40 + 2 to a string after it is evaluated:

puts "the value of 40 + 2 is " + (40 + 2).to_s

# Or use string interpolation:

puts "the value of 40 + 2 is #{40+2}"
