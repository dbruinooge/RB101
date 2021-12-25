def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

# Help Ben fix his code.

def modified_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word) # This exits the method and returns false since one of the words was not an IP number
  end
  return true if dot_separated_words.size == 4 # alternatively, new line 14 could be added: "return false if dot_separated_words.size != 4"
end                                            # if the above condition fails, method will return nil (i think)
