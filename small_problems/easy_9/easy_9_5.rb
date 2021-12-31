def uppercase?(string)
  all_upcase = true
  string.each_char { |char| all_upcase = false if char.upcase != char }
  all_upcase
end

# Further exploration problem:
# It's hard to answer this without knowing the purpose
# for which the method is used. That purpose would likely determine how you
# would want empty strings to be handled.
# However, since the problem states that non-alphabetic characters are ignored,
# the method seems aimed at checking whether there are no uppercase characters.
# From that perspective, it makes sense to return true for an empty string.

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
