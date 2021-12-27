ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# First method:

young = ages.reject { |_, age| age >= 100 }

p young

# Another method:

young2 = ages.select { |_, age| age < 100 }

p young2
