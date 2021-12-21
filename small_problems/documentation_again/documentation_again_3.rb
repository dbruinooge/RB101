def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print.

# "b = 2" and "c = 3" are providing default values.
# my_method has four parameters but two (b and c) are optional since default values are provided
# The method call on line 5 provides three arguments: 4, 5, and 6.
# So the question is, will the method take those three arguments as parameters a, b, and c and then throw an error because no argument was provided for d?
# Under the Methods page in the Ruby API, it says that parameters with default values must be grouped together. I'm not sure if the method here meets that test or not (do they need to be grouped together at the beginning or end?)
# Next I checked the "calling_methods" page. It states:
#  "When the method defines default arguments you do not need to supply all the arguments to the method. Ruby will fill in the missing arguments in-order."
# Based on that statement, and the examples in the Ruby API, this is what I think will be printed:
#  [4, 5, 3, 6]
# It was a little hard to follow the explanation as to why this is the case, but the API provided an example that neatly tracked the code above.