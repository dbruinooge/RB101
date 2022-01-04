# My solution:

# UPPER = ('A'..'Z').to_a
# LOWER = ('a'..'z').to_a

# def letter_percentages(string)
#   lower = []
#   upper = []
#   neither = []
#   string.chars.each do |char|
#     if LOWER.include?(char)
#       lower << char
#     elsif UPPER.include?(char)
#       upper << char
#     else
#       neither << char
#     end
#   end
#   lower_total = lower.size
#   upper_total = upper.size
#   neither_total = neither.size
#   total = string.size
#   result = { lowercase: (lower_total / total.to_f) * 100, uppercase: (upper_total / total.to_f) * 100, neither: (neither_total / total.to_f) * 100  }
# end

# Trying to code LS solution:

def letter_percentages(string)
  length = string.length
  characters = string.chars
  counts = {}
  percentages = {}
  
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither]   = characters.count { |char| char =~ /[^a-zA-Z]/ }
  
  calculate(percentages, counts, length)
  
  percentages
end

def calculate(percentages, counts, length)
  percentages[:lowercase] = (counts[:lowercase] / length.to_f * 100).round(1)
  percentages[:uppercase] = (counts[:uppercase] / length.to_f * 100).round(1)
  percentages[:neither]   = (counts[:neither]   / length.to_f * 100).round(1)
end

p letter_percentages('abcdefGHI') == {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
