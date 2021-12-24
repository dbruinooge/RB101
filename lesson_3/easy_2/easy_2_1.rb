# In this hash of people and their age, see if "Spot" is present.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.has_key?('Spot')
# has_key?, key?, member? and include? are aliases

puts ages.any? { |key, value| key == 'Spot' }

has_spot = false
ages.each { |key, value| has_spot = true if key == 'Spot' }
puts has_spot