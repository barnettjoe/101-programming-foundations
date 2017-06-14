DIGITS = ('0'..'9').to_a.zip((0..9).to_a).to_h

def string_to_signed_integer(str)
  sum = 0
  str.delete('+-').reverse.chars.each_with_index { |x, i| sum += (DIGITS[x] * 10**i) }
    sum *= -1 if str.match /-/
    sum
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
