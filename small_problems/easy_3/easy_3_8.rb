def string_palindrome?(string)
  string == string.reverse
end

def array_palindrome?(array)
  array == array.reverse
end

def palindrome?(object)
  string_palindrome?(object) || array_palindrome?(object)
end

# p string_palindrome?('madam') == true
# p string_palindrome?('Madam') == false          # (case matters)
# p string_palindrome?("madam i'm adam") == false # (all characters matter)
# p string_palindrome?('356653') == true

# p array_palindrome?([1, 2, 3, 2, 1]) == true
# p array_palindrome?([1, 2, 3, 4, 5]) == false

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome?([1, 2, 3, 2, 1]) == true
p palindrome?([1, 2, 3, 4, 5]) == false
