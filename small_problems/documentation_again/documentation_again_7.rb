s = 'abc'
puts s.public_methods.inspect

# How would you modify this code to print just the public methods that are defined or overridden by the String class? That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

puts s.public_methods(false).inspect

# According to the documentation, all = true is the default parameter, which can be overriden with false. In that case, "only those methods in the receiver will be listed". I guess that here, "receiver" refers to string s. So by adding "false" we get only String methods.