# Further exploration: Added return condition
# for empty from_array

def move(n, from_array, to_array)
  to_array << from_array.shift
  return if n == 1 || from_array == []
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(4, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
