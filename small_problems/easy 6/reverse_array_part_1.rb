def reverse!(arr)
  arr.each_with_index { |_, idx|arr.insert(idx, arr.pop) }
end

list = [1,2,3,4]
puts list.object_id
reverse!(list)
puts list == [4, 3, 2, 1]
puts list.object_id
#puts list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list)
puts list == %w(e d c b a)
#puts list.object_id == result.object_id

list = [1,2,3,4]
reverse!(list)
puts list == [4, 3, 2, 1]
#puts list.object_id == result.object_id

list = ['abc']
reverse!(list)
puts list == ['abc']
#puts list.object_id == result.object_id

list = []
reverse!(list) # => []
puts list == []
#puts list.object_id == result.object_id
