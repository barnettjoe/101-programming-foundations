require 'lorem_ipsum_amet'
words = LoremIpsum.lorem_ipsum(words: 100)


def print_in_box(text)
  text = text[0, 79]
  horizontal = '+' + '-' * (text.size + 2) + '+'
  vertical = '|' + ' ' * (text.size + 2) + '|'
  puts horizontal
  puts vertical
  puts "| #{text[0, 79]} |"
  puts vertical
  puts horizontal
end




print_in_box(words)

