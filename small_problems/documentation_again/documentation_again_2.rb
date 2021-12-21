# What will each of the 4 puts statements print?

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

# To answer this, I referred to the "Date" class in the Ruby documentation.
# According to the documentation, the class method "civil" creates a Date object with the date given as a parameter
# It seems to be synonymous/interchangeable with the "new" class method.
# I think the first statement might print -4712-01-01, which are the values listed at the top of the "civil" section of the API. So maybe those are the default values when no arguments are given?
# Second one prints 2016-01-01.
# Third one prints 2016-05-01.
# Fourth one prints 2016-05-13.