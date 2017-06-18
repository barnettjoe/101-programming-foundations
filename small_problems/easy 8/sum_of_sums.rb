def sum_of_sums(a)
  a.map.with_index { |_, idx| a[0..-(idx + 1)].reduce(:+) }.reduce(:+)
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7, 3]) 
puts sum_of_sums([4]) 
puts sum_of_sums([1, 2, 3, 4, 5]) 