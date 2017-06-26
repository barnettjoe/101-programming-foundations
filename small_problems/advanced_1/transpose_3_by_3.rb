def transpose(a)
  (0...a.size).each_with_object([]) do |x, m| 
    m.push a.each_with_object([]) { |o, n| n.push o[x] } 
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

matrix = [
  [1, 5, 8, 1, 4, 7],
  [4, 7, 2, 8, 9, 1],
  [3, 9, 6, 3, 5, 7],
  [1, 1, 1, 2, 3, 4],
  [2, 3, 3, 2, 3, 5],
  [9, 8, 9, 8, 5, 4]
]


p transpose(matrix) == [[1, 4, 3, 1, 2, 9],
                        [5, 7, 9, 1, 3, 8], 
                        [8, 2, 6, 1, 3, 9], 
                        [1, 8, 3, 2, 2, 8], 
                        [4, 9, 5, 3, 3, 5], 
                        [7, 1, 7, 4, 5, 4]] 