LOWERCASE = ('a'..'z')
UPPERCASE = ('A'..'Z')

def letter_case_count(string)
  case_count = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if LOWERCASE.include?(char)
      case_count[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      case_count[:uppercase] += 1
    else
      case_count[:neither] += 1
    end
  end
  case_count
end

# Trying the LS solution:

# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
