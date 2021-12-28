NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def positive_string_integer?(string)
  string.chars[0] != '-'
end

def string_to_signed_integer(string)
  sum = 0
  digits = string.chars
  digits.delete('-')
  digits.delete('+')
  digits.reverse.each_with_index do |num, idx|
    sum += NUMBERS.index(num) * (10**idx)
  end
  if positive_string_integer?(string)
    sum
  else
    sum - (sum * 2)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
