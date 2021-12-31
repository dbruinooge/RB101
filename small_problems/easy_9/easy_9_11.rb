words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

def anagrams(words)
  result = []
  words = words.clone
  while words.any?
    subarray = words.select { |word| word.chars.sort == words[0].chars.sort }
    result << subarray
    words.delete_if { |word| subarray.include?(word) }
  end
  result.each do |line|
    p line
    puts
  end
end

anagrams(words)

# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)
