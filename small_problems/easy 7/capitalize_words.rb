def word_cap(sentence)
  sentence.split.map { |word| word.capitalize }.join(' ')
end

# or without #capitalize :

def word_cap(sentence)
  sentence.split.map { |word| (word[0].upcase + word[1..-1].to_s.downcase) }.join(' ')
end


puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'