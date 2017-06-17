def swap(sentence)
  (sentence.split(' ').map {|word| word_swap(word)}).join(' ')
end

def word_swap(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

puts swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') #== 'ebcdA'
puts swap('a') #== 'a'