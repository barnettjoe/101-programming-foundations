def oddities array
  (1..(array.size / 2)).each {|x| array.delete_at (x)}  
  array
end

def evenities array
  (0..(array.size / 2)).each {|x| array.delete_at (x)}  
  array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts evenities([2, 3, 4, 5, 6]) == [3, 5]
puts evenities(['abc', 'def']) == ['def']
puts evenities([123]) == []
puts evenities([]) == []