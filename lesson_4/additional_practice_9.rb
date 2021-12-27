def titleize(string)
  words = string.split.map do |word|
    word.capitalize
  end
  words.join(" ")
end

puts titleize("the flintstones rock")
