('0'..'9').to_a.zip((0..9).to_a).to_h

def string_to_integer(str)
  sum = 0
  str.reverse.chars.each_with_index { |x, i| sum += (DIGITS[x] * 10**i) }
  sum
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
