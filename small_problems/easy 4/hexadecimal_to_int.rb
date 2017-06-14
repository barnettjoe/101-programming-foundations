DIGITS = { 
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, 
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 
  'e' => 14, 'f' => 15, 'g' => 16  
}

def hexadecimal_to_integer(str)
  sum = 0
  str.downcase.reverse.chars.each_with_index { |x, i| sum += (DIGITS[x] * 16**i) }
  sum
end

puts hexadecimal_to_integer('4D9f') == 19871
