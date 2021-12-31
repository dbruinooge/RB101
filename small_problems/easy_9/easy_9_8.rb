# My version:

# def sequence(count, factor)
#   result = []
#   1.upto(count) { |count| result << count * factor }
#   result
# end

# LS version:

def sequence(count, factor)
  (1..count).to_a.map { |num| num * factor }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
