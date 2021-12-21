5.step(to: 10, by: 3) { |value| puts value }

# What does this code print?

# Initially I looked at the Integer page in the documentation, thinking that #step must be an instance method of the class Integer. Couldn't find it there.
# Then after googling I found that it was an instance method of the class Numeric, the parent class of Integer.
# After reading the documentation, I believe this will print "5" and then "8".