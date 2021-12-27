def alphanum_only(string)
  characters = string.chars.select do |char|
    ('A'..'Z').include?(char) ||
      ('a'..'z').include?(char) ||
      (0..9).include?(char)
  end
  characters.join
end

def real_palindrome?(string)
  alphanum_only(string).downcase == alphanum_only(string).reverse.downcase
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
