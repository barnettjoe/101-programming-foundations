def multiply_all_pairs(a, b)
  a.map { |x| b.map { |y| x * y } }.flatten.sort
end


multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
