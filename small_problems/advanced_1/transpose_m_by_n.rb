def transpose(a)
  length = a[0].size > a.size ? a[0].size : a.size
  (0...length).each_with_object([]) do |x, m| 
    m.push a.each_with_object([]) { |o, n| n.push o[x] } 
  end.select(&:all?)
end

puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]