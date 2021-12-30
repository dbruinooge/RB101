def staggered_case(string, cap_first: true)
  result = ''
  counter = cap_first ? 1 : 2
  string.each_char do |char|
    result << char.upcase if counter.odd?
    result << char.downcase if counter.even?
    counter += 1
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
