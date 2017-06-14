def oddities array
  index_counter = 0
  odds = []
  loop do
    break if array[index_counter] == nil
    odds.push array[index_counter]
    index_counter += 2
  end
  odds
end

def evenities array
  index_counter = 1
  evens = []
  loop do
    break if array[index_counter] == nil
    evens.push array[index_counter]
    index_counter += 2
  end
  evens
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts evenities([2, 3, 4, 5, 6]) == [3, 5]
puts evenities(['abc', 'def']) == ['def']
puts evenities([123]) == []
puts evenities([]) == []