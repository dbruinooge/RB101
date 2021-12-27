statement = "The Flintstones Rock"

frequency_hash = {}

statement.delete(" ").chars.each do |char|
  if frequency_hash.key?(char) == false
    frequency_hash[char] = statement.count(char)
  end
end

p frequency_hash
