puts "==> Enter the first number"
num_1 = gets.chomp.to_f
puts "==> Enter the second number"
num_2 = gets.chomp.to_f

puts "#{num_1} + #{num_2} = #{num_1 + num_2}"
puts "#{num_1} - #{num_2} = #{num_1 - num_2}"
puts "#{num_1} * #{num_2} = #{num_1 * num_2}"
puts "#{num_1} / #{num_2} = #{num_2 == 0 ? "DIVIDED BY ZERO!" : num_1 / num_2}"
puts "#{num_1} % #{num_2} = #{num_2 == 0 ? "DIVIDED BY ZERO!" : num_1 % num_2}"
puts "#{num_1} ** #{num_2} = #{num_1 ** num_2}"