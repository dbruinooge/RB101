# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

def print_times(string, times)
  counter = 1
  while counter <= times
    puts string
    counter += 1
  end
end

print_times('Hi', 5)
