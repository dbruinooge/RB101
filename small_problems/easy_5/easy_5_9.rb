def crunch(string)
  string.chars.each_with_object('') do |char, clean_string|
    clean_string << char unless clean_string[-1] == char
  end
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
