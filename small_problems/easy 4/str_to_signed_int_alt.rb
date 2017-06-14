DIGITS = ('0'..'9').to_a.zip((0..9).to_a).to_h

def string_to_integer(str)
  sum = 0
  str.reverse.chars.each_with_index { |x, i| sum += (DIGITS[x] * 10**i) }
  sum
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then mult = -1 and start_i = 1
  when '+' then mult = 1 and start_i = 1
  else          mult = 1 and start_i = 0
  end
  mult * string_to_integer(string[start_i..-1])
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('570') == 570
puts string_to_signed_integer('-570') == -570
