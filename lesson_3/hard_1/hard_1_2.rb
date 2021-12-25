greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# What is the result of the last line in the code below?

# Line 1 creates a new hash with one key/value set: :a => 'hi'
# Line 2 assigns 'hi' (the value associated with key :a in the hash) to informal_greeting
# Line 3 appends ' there' to the string informal_greeting so now we have 'hi there'. The string is mutated.
# Line 5 prints the string 'hi there'

# To figure out what happens in line 6, I played around in irb and tried to see if the hash value would have the same object id as a string that is assigned to that hash value. It turns out that the object ids are the same.
# I think this means that when the String object is mutated on line 3, the value of the hash also changes. Therefore, line 6 prints the new value of the hash: {:a => "hi there"}
