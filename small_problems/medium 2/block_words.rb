BLOCK = %w(B O X K D Q C P N A G T R E F S J W H U V I L Y Z M) 

def block_word?(word)
  blocks = word.chars.map { |char| BLOCK.index(char.upcase) / 2}
  blocks == blocks.uniq
end


puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true