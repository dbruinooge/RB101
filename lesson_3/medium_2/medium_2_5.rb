def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# 1. The name of the method should make it clear that it mutates its arguments:
#    def append_rutabaga(a_string_param, an_array_param)

# 2. The method should then actually mutate both its arguments:
#    a_string_param << "rutabaga"
#    an_array_param << "rutabaga"
