def featured(num)
  error_msg = 'Error: no featured number found'
  num += 1
  num += 1 until num.odd? && num % 7 == 0
  loop do 
    return num if featured_number?(num)
    return error_msg if num >= 10_000_000_000
    num += 14
  end
  error_msg
end

def featured_number?(num)
  (num % 7 == 0) && num.odd? && unique_digits?(num)
end

def unique_digits?(num)
  array = num.to_s.chars
  array == array.uniq
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) #-> There is no possible number that fulfills those requirements

# p featured_number?(98) == false
# p featured_number?(97) == false
# p featured_number?(49) == true
# p featured_number?(133) == false
