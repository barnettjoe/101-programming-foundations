# take sentence
# split into array of words
# concatenate in reverse order with spaces in between

def reverse_sentence(sentence)
  sentence.split.reverse.join ' '
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'