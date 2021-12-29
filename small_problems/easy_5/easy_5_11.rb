def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# It will be a different object.
# According to the docs, Array#join creates a new String object.
