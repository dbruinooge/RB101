ALPHA = ('a'..'z')

def alpha?(char)
  ALPHA.include?(char)
end

def cleanup(string)
  start_space = true if alpha?(string[0]) == false
  end_space = true if alpha?(string[-1]) == false
  non_alpha_removed = string.chars.map do |c|
    alpha?(c) ? c : " "
  end
  result = non_alpha_removed.join.split(" ").join(" ")
  result.prepend(" ") if start_space
  result << " " if end_space
  result
end

p cleanup("---what's my +*& line?") == ' what s my line '
