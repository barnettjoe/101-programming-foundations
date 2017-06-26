def rotate(a, angle = 90)
  return a if angle == 360
  return a.reverse.map(&:reverse) if angle == 180
  length = a[0].size > a.size ? a[0].size : a.size
  new_arr = (0...length).each_with_object([]) do |x, m| 
    in1 = a.each_with_object([]) { |o, n| n.push o[x] } 
    angle == 90 ? (m.push in1.reverse) : (m.push in1)
  end.select(&:all?)
  angle == 90 ? new_arr : new_arr.reverse
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate(matrix1)
new_matrix2 = rotate(matrix2)
new_matrix3 = rotate(rotate(rotate(rotate(matrix2))))

new_matrix4 = rotate(rotate(matrix1))
p new_matrix4 == rotate(matrix1, 180)

new_matrix5 = rotate(rotate(rotate(matrix1)))
p new_matrix5 == rotate(matrix1, 270)

new_matrix6 = matrix1
p new_matrix6 == rotate(matrix1, 360)

new_matrix7 = rotate(rotate(matrix2))
p new_matrix7 == rotate(matrix2, 180)

new_matrix8 = rotate(rotate(rotate(matrix2)))
p new_matrix8 == rotate(matrix2, 270)

new_matrix9 = matrix2
p new_matrix9 == rotate(matrix2, 360)

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
