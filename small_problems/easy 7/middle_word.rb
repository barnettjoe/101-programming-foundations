def middle_word(sentence)
  return '' if sentence == ''
  sentence.split[(sentence.split.size / 2)]
end

puts middle_word('last word') == 'word'               #if even number of words, take the last of the two middle words
puts middle_word('Launch School is great!') == 'is'
puts middle_word('Launch School is!') == 'School'
puts middle_word('') == ''                            # empty string
puts middle_word('hello') == 'hello'                  # one word

