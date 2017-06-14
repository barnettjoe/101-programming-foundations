# ask for input
# set input as string
# remove whitespace
# count characters
# report number of characters

puts "==> Please write a word or multiple words:"
words = gets.chomp
length = (words.chars.select {|x| (x.match /\s/) == nil}).length
puts "==> There are #{length} characters in \"#{words}\""
