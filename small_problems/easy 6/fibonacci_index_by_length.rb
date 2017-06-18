def fibonacci(index)
  arr = [1, 1]
  (index - 2).times do
    arr[0], arr[1] = arr[1], arr.reduce(:+)
  end
  arr[1]
end

puts fibonacci(7) 

def find_fibonacci_index_by_length(length)
  idx = 3
  while fibonacci(idx).to_s.size < length
    idx += 1
  end
  idx
end


puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847