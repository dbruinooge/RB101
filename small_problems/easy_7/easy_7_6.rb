def staggered_case(string, cap_first: true, count_nonalpha: false)
  result = ''
  counter = cap_first ? 1 : 2
  string.each_char do |char|
    result << char.upcase if counter.odd?
    result << char.downcase if counter.even?
    counter += 1 if char =~ /[a-zA-Z]/ || count_nonalpha
  end
  result
end

p staggered_case('h8h8h8h8h', count_nonalpha: true)
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
