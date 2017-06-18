word_types = ["a noun", "a verb", "an adjective", "an adverb"]
words = {}
word_types.each do |type|
  puts "Enter #{type}:"
  words[type] = gets.chomp
end
p words
puts "Do you #{words['a verb']} your #{words['an adjective']} #{words['a noun']} #{words['an adverb']}? That's hilarious!"
