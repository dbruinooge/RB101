# Write a method that counts the number of
# occurrences of each element in a given array.

vehicles = [
  'car', 'Car', 'tRuck', 'car', 'SuV', 'truck',
  'motorCycle', 'Motorcycle', 'CAR', 'truCK'
]

def count_occurrences(array)
  array.map!(&:downcase)
  array.uniq.each do |element|
    puts "#{element} => #{array.count(element)}"
  end
end

count_occurrences(vehicles)
