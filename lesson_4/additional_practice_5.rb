flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# First method:

index = nil

flintstones.each_with_index do |element, idx|
  index = idx if element[0, 2] == "Be"
end

p index

# Another method:

be_name = nil

flintstones.each do |element|
  be_name = element if element[0, 2] == "Be"
end

p flintstones.index(be_name)

# After checking the LS answer, it looks like I should call #index on the array and give it a block so that it returns only the first value. If there were multiple values starting with "Be" in the hash, my solutions would provide the last value, not the first.
