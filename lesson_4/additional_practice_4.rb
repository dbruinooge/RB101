ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# First method:

minimum = ages.values[0]

ages.each do |_, age|
  minimum = age if age < minimum
end

p minimum

# Second method:

minimum = ages.values.min

p minimum
