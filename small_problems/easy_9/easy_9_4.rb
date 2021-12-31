# Further exploration

def sequence(number)
  result = []
  if number > 0
    1.upto(number) do |count|
      result << count
    end
  elsif number < 0
    result = (number..-1).to_a.reverse
  else
    result << 0
  end
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(0)
p sequence(-5)
