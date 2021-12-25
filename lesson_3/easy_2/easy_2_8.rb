# Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make the return value 
# "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".

advice.slice!("Few things in life are as important as ")

puts advice

# As a bonus, what happens if you use the String#slice method instead?

# if we use String#slice instead, we need to save the return value to a variable. The original string is not mutated.

advice = "Few things in life are as important as house training your pet dinosaur."
new_advice = advice.slice("Few things in life are as important as ")
puts new_advice
puts advice
