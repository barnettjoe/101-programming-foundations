def transpose!(m) 
  (0...m.size).to_a.combination(2).to_a.each do |x| 
    m[x[0]][x[1]], m[x[1]][x[0]] = m[x[1]][x[0]], m[x[0]][x[1]]
  end
  m.select!(&:all?)
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

transpose!(matrix)

p matrix == [[1, 4, 3],
             [5, 7, 9], 
             [8, 2, 6]]

matrix = [
  [1, 5, 8, 1],
  [4, 7, 2, 8],
  [3, 9, 6, 3],
  [1, 1, 1, 2],
  [2, 3, 3, 2],
  [9, 8, 9, 8]
]

transpose!(matrix)

p matrix == [[1, 4, 3, 1, 2, 9],
            [5, 7, 9, 1, 3, 8], 
            [8, 2, 6, 1, 3, 9], 
            [1, 8, 3, 2, 2, 8], ]
          
