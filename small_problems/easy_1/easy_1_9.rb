def sum(num)
  # my original version:
  # sum = 0
  # num.to_s.chars.each { |n| sum += n.to_i }
  # sum
  num.to_s.chars.map(&:to_i).reduce(:+) # LS version
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
