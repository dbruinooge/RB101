ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# First method:

sum = 0
ages.each do |key, value|
  sum += value
end

p sum

# Another method:

sum2 = ages.values.reduce(:+)

p sum2
