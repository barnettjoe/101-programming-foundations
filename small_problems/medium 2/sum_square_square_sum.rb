def sum_square_difference(n)
  (1..n).reduce(:+).abs2 - (1..n).map(&:abs2).reduce(:+)
end

puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
