def swap(sentence)
  (sentence.split(' ').map {|word| word_swap(word)}).join(' ')
end

def word_swap(word)
  (word.chars[1..-1].join.chars.rotate(-1).unshift(word[0])).rotate.join
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'