DIGITS = ('0'..'9').to_a

def integer_to_string(num, ret = '0')
  return ret if num == 0
  count = 0
  until num % 10 == 0
    num -= 1
    count += 1
  end
  return integer_to_string(num / 10, '') + DIGITS[count]
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
