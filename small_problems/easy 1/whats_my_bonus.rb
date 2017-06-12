# if bonus, return half of num
# else return zero

def calculate_bonus(num, on_off)
  on_off ? num / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000