def multiply(array, muliplier)
  counter = 0
  multiplied_nums = []
  loop do 
    multiplied_nums.push(array[counter] * muliplier) 
    counter += 1
    break if counter >= array.size
  end
  multiplied_nums
end


my_numbers = [1, 4, 3, 7, 2, 6]
puts multiply(my_numbers, 3) == [3, 12, 9, 21, 6, 18]