def is_odd?(int)
  if int < 0
    (-int).remainder(2) == 1
  else
    int.remainder(2) == 1
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false