flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# First method:

hash = flintstones.each_with_index.to_h

p hash

# Another method:

hash2 = {}
flintstones.each_with_index do |element, idx|
  hash2[element] = idx
end

p hash2
