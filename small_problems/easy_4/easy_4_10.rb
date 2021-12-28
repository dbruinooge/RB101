def signed_integer_to_string(number)
  if number > 0
    integer_to_string(number).prepend('+')
  elsif number < 0
    integer_to_string(number.abs).prepend('-')
  else
    integer_to_string(number)
  end
end

# Further exploration

# def signed_integer_to_string(number)
#   string = integer_to_string(number.abs)
#   case number <=> 0
#   when -1 then string.prepend('-')
#   when +1 then string.prepend('+')
#   else        string
#   end
# end

def integer_to_string(number)
  return '0' if number == 0
  digit_array = []
  counter = 0
  while number / (10**counter) != 0
    digit = (number / 10**counter) % 10
    digit_array << digit
    counter += 1
  end
  digit_array.reverse.join
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
