# Write a method that returns one UUID when called with no parameters.
# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.

def create_uuid
  result = ''
  8.times { result << new_hex }
  result << '-'
  4.times { result << new_hex }
  result << '-'
  4.times { result << new_hex }
  result << '-'
  4.times { result << new_hex }
  result << '-'
  12.times { result << new_hex }
  result
end

def new_hex
  num = rand(16)
  case num
  when (0..9)
    num.to_s
  when 10
    'a'
  when 11
    'b'
  when 12
    'c'
  when 13
    'd'
  when 14
    'e'
  when 15
    'f'
  end
end

p create_uuid
