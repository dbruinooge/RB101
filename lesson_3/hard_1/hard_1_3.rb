# What will be printed by each of these code groups?

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Answer:
# one is: one
# two is: two
# three is: three

# Reason: the outer variables one, two and three cannot be accessed by the method. The method initializes new local variables that happen to share the same names, and then reassigns those new local variables, but the values of the outer variables are unaffected.

def mess_with_vars2(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars2(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Answer:
# one is: one
# two is: two
# three is: three

# Reason: Same as above, except that the method's local variables are reassigned to String expressions rather than to the String objects pointed to by other local variables. The result is the same.

def mess_with_vars3(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars3(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Answer: This one seems trickier. Again, the method's local variables are completely separate from the outer variables, although they point to the same String objects as the outer variables. Then we have mutating methods called on those String objects inside the mess_with_vars method. From what I understand, then, I think that the objects pointed to by the outer variables have been mutated, and this changes the output in the last three lines:
# one is: two
# two is: three
# three is: one
