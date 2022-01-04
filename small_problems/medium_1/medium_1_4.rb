# Tried writing LS solution

def create_hash(n)
  result = {}
  1.upto(n) do |i|
    result[i] = 'off'
  end
  result
end

def switch_lights(hash, multiple)
  n = hash.size
  1.upto(n) do |i|
    if i % multiple == 0
      hash[i] = (hash[i] == 'on') ? 'off' : 'on' 
    end
  end
  hash
end

def lights_solution(n)
  lights = create_hash(n)
  1.upto(n) do |i|
    lights = switch_lights(lights, i)
  end
  ons = []
  lights.each do |light, status|
    ons << light if status == 'on'
  end
  offs = []
  lights.each do |light, status|
    offs << light if status == 'off'
  end
  output_text(ons, offs)
end

# Further exploration:

def output_text(arr1, arr2)
  "Lights #{joinor(arr2)} are now off. Lights #{joinor(arr1)} are now on."
end

def joinor(array, delimiter=', ', word='and')
  return array.to_s if array.size == 1
  if array.size == 2
    array.join(" #{word} ")
  else
    array = array.dup
    array[-1] = "#{word} #{array.last}"
    array.join(delimiter)
  end
end

p lights_solution(10)

# My first solution:

# def multiples(x, n)
#   result = []
#   1.upto(n) do |count|
#     result << count if count % x == 0
#   end
#   result
# end

# def lights_on(n)
#   lights = []
#   1.upto(n) do |light|
#     lights << false
#   end
#   1.upto(n) do |count|
#     inner_count = 0
#     mults = multiples(count, n)
#     lights.map! do |light, idx|
#       inner_count += 1
#       if mults.include?(inner_count)
#         !light
#       else
#         light
#       end
#     end
#   end
#   result = []
#   lights.each_with_index do |light, idx|
#     result << idx + 1 if light == true
#   end
#   result
# end

# p lights_on(10)
