def max_rotation(int)
  (0...(int.to_s.size - 1)).reduce(int.to_s) { |x, n| x[0, n] + x[(n + 1)..-1] + x[n] }.to_i 
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
