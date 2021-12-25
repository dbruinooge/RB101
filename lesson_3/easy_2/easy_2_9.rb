# Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"

puts statement.chars.count('t')

# Until I looked at the LS solution, I didn't notice that String#count also exists. 
# statement.count('t') is simpler.
