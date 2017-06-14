def oddities array
  array.select.with_index {|x, i| i.even?}
end

def evenities array
  array.select.with_index {|x, i| i.odd?}
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts evenities([2, 3, 4, 5, 6]) == [3, 5]
puts evenities(['abc', 'def']) == ['def']
puts evenities([123]) == []
puts evenities([]) == []