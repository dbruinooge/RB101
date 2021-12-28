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

# But the LS solution using #divmod and a conversion array is much clearer.
# I glanced at it to get the basic idea then tried coding it myself:

# NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(NUMBERS[remainder])
#     break if number == 0
#   end
#   result
# end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
