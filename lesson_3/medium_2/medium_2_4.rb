def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Here, the situation is reversed. When my_string is passed to tricky_method_two as an argument, it is passed to the method as a reference to a String object. When that reference is passed, the method initializes a new variable, a_string_param, which points to the same String object as my_string. The << method on line 2 then mutates that String object that both a_string_param and my_string are pointing to. After exiting the method, the object remains mutated and printing my_string reflects that.

# my_array is also passed to the method as a reference to an Array, and the method initializes an_array_param to point to that array. However, line 3 does not mutate that array but rather reassigns an_array_param which creates a new array object. After exiting the method, printing my_array therefore displays the original, unmutated array ["pumpkins"].
