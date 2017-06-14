DIGITS = ('0'..'9').to_a

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  mult = number <=> 0
  arr = ['', '+', '-']
  "#{arr[mult]}#{integer_to_string(mult * number)}"
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
