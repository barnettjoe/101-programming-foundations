# add 1 until you get odd multiple of 7
# then add 14 until all conditions satisfied
MSG = "There is no possible number that fulfills those requirements"

def featured(n)
  x = 1
  loop do 
    n += x
    bools = [n % 7 == 0, n.odd?, !(n.digits.uniq!)]
    bools[0, 2].all? ? (bools[2] ? break : x = 14) : (return MSG if n > 9876543210)
  end
  n
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987
puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements