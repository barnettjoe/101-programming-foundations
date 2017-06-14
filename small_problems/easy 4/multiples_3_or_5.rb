def multisum(num)
  ((1..num).to_a.select { |x| (x % 3).zero? || (x % 5).zero? }).reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
