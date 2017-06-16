def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)  # breaks loop for invalid numbers
  end
  true
end


def is_an_ip_number?(str)
  str.match /\A\d*\Z/
end

puts dot_separated_ip_address? "4.5.5"
puts dot_separated_ip_address? "1.2.3.4.5" 
puts dot_separated_ip_address? "1.3.4.5" 
puts dot_separated_ip_address? "1.3.a.5" 
