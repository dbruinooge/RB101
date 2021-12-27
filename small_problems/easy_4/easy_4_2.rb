ORDINALS = ['th', 'st', 'nd', 'rd', 'th', 'th', 'th', 'th', 'th', 'th']

def century(year)
  prefix = (year + 99) / 100
  if [11, 12, 13].include?(prefix % 100)
    suffix = 'th'
  else
    suffix = ORDINALS[prefix % 10]
  end
  prefix.to_s + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
