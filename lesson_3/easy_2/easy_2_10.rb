# Back in the stone age (before CSS) we used spaces to align things on the screen. 
# If we had a table of Flintstone family members that was forty characters in width, 
# how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

# title.center(40) will center the title with 15 blank padding characters
# (25 original characters in the title string + 15 padding characters = 40)

puts title.center(40)
