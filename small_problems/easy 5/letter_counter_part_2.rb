#pseudocode

# make empty hash with default value of zero
# turn sentence into array of words 
# iterating thru sentence, increment value for key of that length by one

def word_sizes(sentence)
  words = Hash.new(0)
  sentence.split.each {|x| words[x.count("A-Za-z")] += 1}
  words
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}