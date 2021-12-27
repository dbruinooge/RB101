flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# First method:

flintstones.map! { |name| name[0, 3] }

p flintstones

# Second method

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

short_names = []
flintstones.each { |name| short_names << name[0, 3] }

p short_names
