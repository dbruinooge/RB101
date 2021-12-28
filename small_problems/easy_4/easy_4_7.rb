NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def string_to_integer(string)
  sum = 0
  string.chars.reverse.each_with_index do |num, idx|
    sum += NUMBERS.index(num) * (10**idx)
  end
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Further exploration

HEXADECIMAL = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
                'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }

def hexadecimal_to_integer(hex)
  sum = 0
  hex.chars.each_with_index do |char, idx|
    sum += HEXADECIMAL[char.upcase] * (16**(hex.chars.size - idx - 1))
  end
  sum
end

p hexadecimal_to_integer('4D9f') == 19871
