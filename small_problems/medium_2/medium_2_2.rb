# My solution:

# BLOCKS= { 'B' => 'O', 'G' => 'T', 'V' => 'I', 'X' => 'K', 'R' => 'E', 'L' => 'Y',
#           'D' => 'Q', 'F' => 'S', 'Z' => 'M', 'C' => 'P', 'J' => 'W',
#           'N' => 'A', 'H' => 'U' }

# def block_word?(word)
#   spellable = true
#   used = {}
#   word.upcase.chars.each do |char|
#     if used.key?(char) || used.value?(char)
#       spellable = false
#     elsif BLOCKS.key?(char)
#       used[char] = BLOCKS[char]
#     elsif BLOCKS.value?(char)
#       used[BLOCKS.key(char)] = char
#     end
#   end
#   spellable
# end

# Attempt to code the LS solution:

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(word)
  BLOCKS.none? {|block| word.upcase.count(block) >= 2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
