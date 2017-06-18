def multiply_list(a, b)
  a.zip(b).map { |sub_arr| sub_arr.reduce(:*) }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
